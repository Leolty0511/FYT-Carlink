.class public Lcom/lsec/core/util/FuncUtils;
.super Ljava/lang/Object;
.source "FuncUtils.java"


# static fields
.field private static LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static lastClickTime:J

.field private static mCalendar:Ljava/util/Calendar;

.field private static mClockFormat:Ljava/text/SimpleDateFormat;

.field private static mCurMillis:J

.field public static mDispayMetrics:Landroid/util/DisplayMetrics;

.field private static mLastMillis:J

.field public static mTypeFaces:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/Typeface;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field mReceiver:Landroid/content/BroadcastReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 64
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    sput-object v0, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    .line 67
    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    sput-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    .line 68
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ar"

    const-string v2, "ISO-8859-6"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "be"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "bg"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ca"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 72
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "cs"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 73
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "da"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 74
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "de"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "el"

    const-string v2, "ISO-8859-7"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "es"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 77
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "et"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fi"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "fr"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 80
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hr"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 81
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "hu"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 82
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "is"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 83
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "it"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 84
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "iw"

    const-string v2, "ISO-8859-8"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ja"

    const-string v2, "Shift_JIS"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ko"

    const-string v2, "EUC-KR"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lt"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "lv"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 89
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "mk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "nl"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "no"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "pt"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 94
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ro"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "ru"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sh"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sk"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 98
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sl"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 99
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sq"

    const-string v2, "ISO-8859-2"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 100
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sr"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 101
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "sv"

    const-string v2, "ISO-8859-1"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 102
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "tr"

    const-string v2, "ISO-8859-9"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 103
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    const-string v1, "uk"

    const-string v2, "ISO-8859-5"

    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/lsec/core/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 494
    new-instance v0, Lcom/lsec/core/util/FuncUtils$1;

    invoke-direct {v0, p0}, Lcom/lsec/core/util/FuncUtils$1;-><init>(Lcom/lsec/core/util/FuncUtils;)V

    iput-object v0, p0, Lcom/lsec/core/util/FuncUtils;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 63
    return-void
.end method

.method public static FormatTime(J)Ljava/lang/String;
    .locals 2
    .param p0, "time"    # J

    .prologue
    .line 327
    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yy/MM/dd HH:mm:ss"

    invoke-direct {v0, v1}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 328
    .local v0, "format":Ljava/text/SimpleDateFormat;
    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public static HexToBcd(I)I
    .locals 2
    .param p0, "hex"    # I

    .prologue
    .line 955
    rem-int/lit8 v0, p0, 0x64

    div-int/lit8 v0, v0, 0xa

    shl-int/lit8 v0, v0, 0x4

    rem-int/lit8 v1, p0, 0xa

    or-int/2addr v0, v1

    return v0
.end method

.method public static String2ByteArray(Ljava/lang/String;)[B
    .locals 6
    .param p0, "strCommand"    # Ljava/lang/String;

    .prologue
    .line 199
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    new-array v0, v4, [B

    .line 200
    .local v0, "bCommand":[B
    const/4 v1, 0x0

    .line 201
    .local v1, "heightData":B
    const/4 v3, 0x0

    .line 202
    .local v3, "lowData":B
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v2, v4, :cond_0

    .line 209
    return-object v0

    .line 203
    :cond_0
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->char20xByte(C)B

    move-result v4

    shl-int/lit8 v4, v4, 0x4

    int-to-byte v1, v4

    .line 204
    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    invoke-static {v4}, Lcom/lsec/core/util/FuncUtils;->char20xByte(C)B

    move-result v3

    .line 205
    div-int/lit8 v4, v2, 0x2

    or-int v5, v1, v3

    int-to-byte v5, v5

    aput-byte v5, v0, v4

    .line 206
    add-int/lit8 v2, v2, 0x2

    goto :goto_0
.end method

.method static synthetic access$0(Ljava/util/Calendar;)V
    .locals 0

    .prologue
    .line 118
    sput-object p0, Lcom/lsec/core/util/FuncUtils;->mCalendar:Ljava/util/Calendar;

    return-void
.end method

.method static synthetic access$1()Ljava/text/SimpleDateFormat;
    .locals 1

    .prologue
    .line 119
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->mClockFormat:Ljava/text/SimpleDateFormat;

    return-object v0
.end method

.method static synthetic access$2()Ljava/util/Calendar;
    .locals 1

    .prologue
    .line 118
    sget-object v0, Lcom/lsec/core/util/FuncUtils;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method public static bcd2_hex(B)B
    .locals 2
    .param p0, "val"    # B

    .prologue
    .line 847
    and-int/lit8 v1, p0, 0xf

    int-to-byte v0, v1

    .line 848
    .local v0, "i":B
    shr-int/lit8 v1, p0, 0x4

    int-to-byte p0, v1

    .line 849
    and-int/lit8 v1, p0, 0xf

    int-to-byte p0, v1

    .line 850
    mul-int/lit8 v1, p0, 0xa

    int-to-byte p0, v1

    .line 851
    add-int v1, v0, p0

    int-to-byte v0, v1

    .line 852
    return v0
.end method

.method public static byte2int(B)I
    .locals 2
    .param p0, "data"    # B

    .prologue
    .line 189
    const/4 v0, 0x0

    .line 190
    .local v0, "ret":I
    and-int/lit16 v1, p0, 0x80

    if-nez v1, :cond_0

    .line 191
    move v0, p0

    .line 195
    :goto_0
    return v0

    .line 193
    :cond_0
    and-int/lit16 v0, p0, 0xff

    goto :goto_0
.end method

.method public static byteArray2String([B)Ljava/lang/String;
    .locals 6
    .param p0, "data"    # [B

    .prologue
    .line 163
    const-string v3, ""

    .line 164
    .local v3, "strByte":Ljava/lang/String;
    const/4 v0, 0x0

    .line 165
    .local v0, "heightData":I
    const/4 v2, 0x0

    .line 166
    .local v2, "lowData":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, p0

    if-lt v1, v4, :cond_0

    .line 172
    return-object v3

    .line 167
    :cond_0
    aget-byte v4, p0, v1

    and-int/lit16 v4, v4, 0xf0

    div-int/lit8 v0, v4, 0x10

    .line 168
    aget-byte v4, p0, v1

    and-int/lit8 v2, v4, 0xf

    .line 169
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/lsec/core/util/FuncUtils;->intTo0xChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {v2}, Lcom/lsec/core/util/FuncUtils;->intTo0xChar(I)C

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 166
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static bytes2mb(J)I
    .locals 6
    .param p0, "bytes"    # J

    .prologue
    const/4 v3, 0x0

    .line 856
    new-instance v1, Ljava/math/BigDecimal;

    invoke-direct {v1, p0, p1}, Ljava/math/BigDecimal;-><init>(J)V

    .line 857
    .local v1, "filesize":Ljava/math/BigDecimal;
    new-instance v2, Ljava/math/BigDecimal;

    const/high16 v4, 0x100000

    invoke-direct {v2, v4}, Ljava/math/BigDecimal;-><init>(I)V

    .line 859
    .local v2, "megabyte":Ljava/math/BigDecimal;
    const/4 v4, 0x2

    const/4 v5, 0x0

    :try_start_0
    invoke-virtual {v1, v2, v4, v5}, Ljava/math/BigDecimal;->divide(Ljava/math/BigDecimal;II)Ljava/math/BigDecimal;

    move-result-object v4

    invoke-virtual {v4}, Ljava/math/BigDecimal;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 864
    :goto_0
    return v3

    .line 860
    :catch_0
    move-exception v0

    .line 861
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static char20xByte(C)B
    .locals 2
    .param p0, "cSrc"    # C

    .prologue
    .line 213
    const/4 v0, 0x0

    .line 214
    .local v0, "bDest":B
    const/16 v1, 0x30

    if-gt v1, p0, :cond_1

    const/16 v1, 0x39

    if-gt p0, v1, :cond_1

    .line 215
    add-int/lit8 v1, p0, -0x30

    int-to-byte v0, v1

    .line 221
    :cond_0
    :goto_0
    return v0

    .line 216
    :cond_1
    const/16 v1, 0x61

    if-gt v1, p0, :cond_2

    const/16 v1, 0x66

    if-gt p0, v1, :cond_2

    .line 217
    add-int/lit8 v1, p0, -0x61

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    goto :goto_0

    .line 218
    :cond_2
    const/16 v1, 0x41

    if-gt v1, p0, :cond_0

    const/16 v1, 0x46

    if-gt p0, v1, :cond_0

    .line 219
    add-int/lit8 v1, p0, -0x41

    add-int/lit8 v1, v1, 0xa

    int-to-byte v0, v1

    goto :goto_0
.end method

.method public static check([II)Z
    .locals 2
    .param p0, "ints"    # [I
    .param p1, "index"    # I

    .prologue
    .line 465
    const/4 v0, 0x0

    .line 466
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    .line 467
    array-length v1, p0

    if-le v1, p1, :cond_1

    const/4 v0, 0x1

    .line 469
    :cond_0
    :goto_0
    return v0

    .line 467
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static check([Ljava/lang/Object;I)Z
    .locals 2
    .param p0, "objs"    # [Ljava/lang/Object;
    .param p1, "index"    # I

    .prologue
    .line 473
    const/4 v0, 0x0

    .line 474
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    .line 475
    array-length v1, p0

    if-le v1, p1, :cond_1

    const/4 v0, 0x1

    .line 477
    :cond_0
    :goto_0
    return v0

    .line 475
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static checkFilter(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "strFilters"    # [Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 667
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 677
    :cond_0
    :goto_0
    return v1

    .line 670
    :cond_1
    if-eqz p1, :cond_0

    .line 671
    array-length v3, p1

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_0

    aget-object v0, p1, v2

    .line 672
    .local v0, "str":Ljava/lang/String;
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 673
    const/4 v1, 0x1

    goto :goto_0

    .line 671
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public static convert([I)[B
    .locals 4
    .param p0, "value"    # [I

    .prologue
    .line 737
    if-nez p0, :cond_1

    .line 738
    const/4 v0, 0x0

    .line 745
    :cond_0
    return-object v0

    .line 740
    :cond_1
    array-length v2, p0

    .line 741
    .local v2, "size":I
    new-array v0, v2, [B

    .line 742
    .local v0, "data":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 743
    aget v3, p0, v1

    int-to-byte v3, v3

    aput-byte v3, v0, v1

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static convert([B)[I
    .locals 4
    .param p0, "value"    # [B

    .prologue
    .line 725
    if-nez p0, :cond_1

    .line 726
    const/4 v0, 0x0

    .line 733
    :cond_0
    return-object v0

    .line 728
    :cond_1
    array-length v2, p0

    .line 729
    .local v2, "size":I
    new-array v0, v2, [I

    .line 730
    .local v0, "data":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 731
    aget-byte v3, p0, v1

    aput v3, v0, v1

    .line 730
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public static createBmp(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
    .locals 9
    .param p0, "bmp"    # Landroid/graphics/Bitmap;
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    const/4 v1, 0x0

    .line 926
    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v0

    if-nez v0, :cond_1

    .line 933
    .end local p0    # "bmp":Landroid/graphics/Bitmap;
    :cond_0
    :goto_0
    return-object p0

    .line 929
    .restart local p0    # "bmp":Landroid/graphics/Bitmap;
    :cond_1
    int-to-float v0, p1

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v2

    int-to-float v2, v2

    div-float v8, v0, v2

    .line 930
    .local v8, "scaleWidth":F
    int-to-float v0, p2

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    int-to-float v2, v2

    div-float v7, v0, v2

    .line 931
    .local v7, "scaleHeight":F
    new-instance v5, Landroid/graphics/Matrix;

    invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V

    .line 932
    .local v5, "matrix":Landroid/graphics/Matrix;
    invoke-virtual {v5, v8, v7}, Landroid/graphics/Matrix;->postScale(FF)Z

    .line 933
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    const/4 v6, 0x1

    move-object v0, p0

    move v2, v1

    invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;

    move-result-object p0

    goto :goto_0
.end method

.method public static createSuProcess()Ljava/lang/Process;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 796
    new-instance v0, Ljava/io/File;

    const-string v1, "/system/xbin/ru"

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 797
    .local v0, "rootUser":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 800
    :goto_0
    return-object v1

    :cond_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v1

    const-string v2, "su"

    invoke-virtual {v1, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    goto :goto_0
.end method

.method public static createSuProcess(Ljava/lang/String;)Ljava/lang/Process;
    .locals 5
    .param p0, "cmd"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 804
    const/4 v0, 0x0

    .line 805
    .local v0, "os":Ljava/io/DataOutputStream;
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->createSuProcess()Ljava/lang/Process;

    move-result-object v2

    .line 807
    .local v2, "process":Ljava/lang/Process;
    :try_start_0
    new-instance v1, Ljava/io/DataOutputStream;

    invoke-virtual {v2}, Ljava/lang/Process;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 808
    .end local v0    # "os":Ljava/io/DataOutputStream;
    .local v1, "os":Ljava/io/DataOutputStream;
    :try_start_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 809
    const-string v3, "exit $?\n"

    invoke-virtual {v1, v3}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 811
    if-eqz v1, :cond_0

    .line 813
    :try_start_2
    invoke-virtual {v1}, Ljava/io/DataOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 819
    :cond_0
    :goto_0
    return-object v2

    .line 810
    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "os":Ljava/io/DataOutputStream;
    :catchall_0
    move-exception v3

    .line 811
    :goto_1
    if-eqz v0, :cond_1

    .line 813
    :try_start_3
    invoke-virtual {v0}, Ljava/io/DataOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0

    .line 817
    :cond_1
    :goto_2
    throw v3

    .line 814
    :catch_0
    move-exception v4

    goto :goto_2

    .end local v0    # "os":Ljava/io/DataOutputStream;
    .restart local v1    # "os":Ljava/io/DataOutputStream;
    :catch_1
    move-exception v3

    goto :goto_0

    .line 810
    :catchall_1
    move-exception v3

    move-object v0, v1

    .end local v1    # "os":Ljava/io/DataOutputStream;
    .restart local v0    # "os":Ljava/io/DataOutputStream;
    goto :goto_1
.end method

.method public static delayIsDone(I)Z
    .locals 4
    .param p0, "delay"    # I

    .prologue
    .line 127
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/lsec/core/util/FuncUtils;->mCurMillis:J

    .line 128
    sget-wide v0, Lcom/lsec/core/util/FuncUtils;->mCurMillis:J

    sget-wide v2, Lcom/lsec/core/util/FuncUtils;->mLastMillis:J

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    int-to-long v2, p0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 129
    sget-wide v0, Lcom/lsec/core/util/FuncUtils;->mCurMillis:J

    sput-wide v0, Lcom/lsec/core/util/FuncUtils;->mLastMillis:J

    .line 130
    const/4 v0, 0x1

    .line 133
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static dp2px(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "dpValue"    # F

    .prologue
    .line 999
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1000
    .local v0, "scale":F
    mul-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static equals([I[I)Z
    .locals 6
    .param p0, "array1"    # [I
    .param p1, "array2"    # [I

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 776
    if-ne p0, p1, :cond_1

    .line 788
    :cond_0
    :goto_0
    return v2

    .line 779
    :cond_1
    if-eqz p0, :cond_2

    if-eqz p1, :cond_2

    array-length v4, p0

    array-length v5, p1

    if-eq v4, v5, :cond_3

    :cond_2
    move v2, v3

    .line 780
    goto :goto_0

    .line 782
    :cond_3
    array-length v1, p0

    .line 783
    .local v1, "len":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v1, :cond_0

    .line 784
    aget v4, p0, v0

    aget v5, p1, v0

    if-eq v4, v5, :cond_4

    move v2, v3

    .line 785
    goto :goto_0

    .line 783
    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public static fileSize(Ljava/lang/String;)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 749
    const/4 v2, -0x1

    .line 751
    .local v2, "result":I
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 752
    .local v1, "in":Ljava/io/InputStream;
    invoke-virtual {v1}, Ljava/io/InputStream;->available()I

    move-result v2

    .line 753
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 758
    .end local v1    # "in":Ljava/io/InputStream;
    :goto_0
    return v2

    .line 754
    :catch_0
    move-exception v0

    .line 755
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static forgetWIFIpwd(Landroid/content/Context;)V
    .locals 4
    .param p0, "ctx"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x0

    .line 918
    const-string v2, "wifi"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/WifiManager;

    .line 919
    .local v1, "wifiManager":Landroid/net/wifi/WifiManager;
    invoke-virtual {v1, v3}, Landroid/net/wifi/WifiManager;->setWifiEnabled(Z)Z

    .line 920
    invoke-virtual {v1}, Landroid/net/wifi/WifiManager;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v0

    .line 921
    .local v0, "conlist":Ljava/util/List;, "Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_0

    .line 922
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/net/wifi/WifiConfiguration;

    iget v2, v2, Landroid/net/wifi/WifiConfiguration;->networkId:I

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiManager;->removeNetwork(I)Z

    .line 923
    :cond_0
    return-void
.end method

.method public static formatDuration(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v10, 0x3c

    .line 391
    const-wide/16 v8, 0x3e8

    div-long v6, p0, v8

    .line 392
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 393
    const-string v8, "00:00:00"

    .line 398
    :goto_0
    return-object v8

    .line 395
    :cond_0
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 396
    .local v2, "min":J
    div-long v8, v6, v10

    div-long v0, v8, v10

    .line 397
    .local v0, "hour":J
    rem-long v4, v6, v10

    .line 398
    .local v4, "second":J
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static formatDuration_Sec(J)Ljava/lang/String;
    .locals 14
    .param p0, "duration"    # J

    .prologue
    const-wide/16 v10, 0x3c

    .line 402
    move-wide v6, p0

    .line 403
    .local v6, "time":J
    const-wide/16 v8, 0x0

    cmp-long v8, v6, v8

    if-gtz v8, :cond_0

    .line 404
    const-string v8, "00:00:00"

    .line 409
    :goto_0
    return-object v8

    .line 406
    :cond_0
    div-long v8, v6, v10

    rem-long v2, v8, v10

    .line 407
    .local v2, "min":J
    div-long v8, v6, v10

    div-long v0, v8, v10

    .line 408
    .local v0, "hour":J
    rem-long v4, v6, v10

    .line 409
    .local v4, "second":J
    sget-object v8, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v9, "%02d:%02d:%02d"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x1

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    const/4 v11, 0x2

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    aput-object v12, v10, v11

    invoke-static {v8, v9, v10}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    goto :goto_0
.end method

.method public static formatHistoryTimeString(Landroid/content/Context;J)Ljava/lang/String;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "when"    # J

    .prologue
    .line 332
    new-instance v2, Landroid/text/format/Time;

    invoke-direct {v2}, Landroid/text/format/Time;-><init>()V

    .line 333
    .local v2, "then":Landroid/text/format/Time;
    invoke-virtual {v2, p1, p2}, Landroid/text/format/Time;->set(J)V

    .line 334
    new-instance v1, Landroid/text/format/Time;

    invoke-direct {v1}, Landroid/text/format/Time;-><init>()V

    .line 335
    .local v1, "now":Landroid/text/format/Time;
    invoke-virtual {v1}, Landroid/text/format/Time;->setToNow()V

    .line 336
    const v0, 0x80b00

    .line 337
    .local v0, "format_flags":I
    iget v3, v2, Landroid/text/format/Time;->year:I

    iget v4, v1, Landroid/text/format/Time;->year:I

    if-eq v3, v4, :cond_0

    .line 338
    or-int/lit8 v0, v0, 0x14

    .line 345
    :goto_0
    invoke-static {p0, p1, p2, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 340
    :cond_0
    iget v3, v2, Landroid/text/format/Time;->yearDay:I

    iget v4, v1, Landroid/text/format/Time;->yearDay:I

    if-eq v3, v4, :cond_1

    .line 341
    or-int/lit8 v0, v0, 0x10

    .line 343
    :cond_1
    or-int/lit16 v0, v0, 0x81

    goto :goto_0
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;I)I
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # I

    .prologue
    .line 641
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 642
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->ints:[I

    const/4 v1, 0x0

    aget p1, v0, v1

    .line 644
    .end local p1    # "valueIfNotOk":I
    :cond_0
    return p1
.end method

.method public static get(Lcom/syu/ipc/ModuleObject;Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p0, "obj"    # Lcom/syu/ipc/ModuleObject;
    .param p1, "valueIfNotOk"    # Ljava/lang/String;

    .prologue
    .line 648
    if-eqz p0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    array-length v0, v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 649
    iget-object v0, p0, Lcom/syu/ipc/ModuleObject;->strs:[Ljava/lang/String;

    const/4 v1, 0x0

    aget-object p1, v0, v1

    .line 651
    .end local p1    # "valueIfNotOk":Ljava/lang/String;
    :cond_0
    return-object p1
.end method

.method public static getAssetsBitmap(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .locals 4
    .param p0, "am"    # Landroid/content/res/AssetManager;
    .param p1, "PhotoPath"    # Ljava/lang/String;

    .prologue
    .line 263
    const/4 v2, 0x0

    .line 264
    .local v2, "photo":Landroid/graphics/Bitmap;
    const/4 v1, 0x0

    .line 266
    .local v1, "is":Ljava/io/InputStream;
    :try_start_0
    invoke-virtual {p0, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v1

    .line 267
    invoke-static {v1}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 272
    if-eqz v1, :cond_0

    .line 273
    :try_start_1
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_3

    .line 279
    :cond_0
    :goto_0
    return-object v2

    .line 268
    :catch_0
    move-exception v0

    .line 269
    .local v0, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 272
    if-eqz v1, :cond_0

    .line 273
    :try_start_3
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    .line 274
    :catch_1
    move-exception v0

    .line 275
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 270
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v3

    .line 272
    if-eqz v1, :cond_1

    .line 273
    :try_start_4
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 277
    :cond_1
    :goto_1
    throw v3

    .line 274
    :catch_2
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 274
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v0

    .line 275
    .restart local v0    # "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getAudioFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 619
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 620
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 621
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 622
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 623
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 624
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 625
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "audio/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 626
    return-object v0
.end method

.method public static getBitmapFromDrawable(Landroid/graphics/drawable/Drawable;II)Landroid/graphics/Bitmap;
    .locals 5
    .param p0, "drawable"    # Landroid/graphics/drawable/Drawable;
    .param p1, "w"    # I
    .param p2, "h"    # I

    .prologue
    const/4 v4, 0x0

    .line 481
    if-lez p1, :cond_0

    if-gtz p2, :cond_1

    .line 482
    :cond_0
    const/4 v0, 0x0

    .line 491
    :goto_0
    return-object v0

    .line 485
    :cond_1
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->getOpacity()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_2

    sget-object v2, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    .line 484
    :goto_1
    invoke-static {p1, p2, v2}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 487
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v1, Landroid/graphics/Canvas;

    invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 488
    .local v1, "canvas":Landroid/graphics/Canvas;
    invoke-virtual {p0, v4, v4, p1, p2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 489
    invoke-virtual {p0, v1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto :goto_0

    .line 485
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "canvas":Landroid/graphics/Canvas;
    :cond_2
    sget-object v2, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;

    goto :goto_1
.end method

.method public static getBytes([C)[B
    .locals 4
    .param p0, "chars"    # [C

    .prologue
    .line 225
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 226
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p0

    invoke-static {v3}, Ljava/nio/CharBuffer;->allocate(I)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 227
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1, p0}, Ljava/nio/CharBuffer;->put([C)Ljava/nio/CharBuffer;

    .line 228
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->flip()Ljava/nio/Buffer;

    .line 229
    invoke-virtual {v2, v1}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 230
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v3

    return-object v3
.end method

.method public static getChars([B)[C
    .locals 4
    .param p0, "bytes"    # [B

    .prologue
    .line 234
    const-string v3, "UTF-8"

    invoke-static {v3}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v2

    .line 235
    .local v2, "cs":Ljava/nio/charset/Charset;
    array-length v3, p0

    invoke-static {v3}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 236
    .local v0, "bb":Ljava/nio/ByteBuffer;
    invoke-virtual {v0, p0}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 237
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 238
    invoke-virtual {v2, v0}, Ljava/nio/charset/Charset;->decode(Ljava/nio/ByteBuffer;)Ljava/nio/CharBuffer;

    move-result-object v1

    .line 239
    .local v1, "cb":Ljava/nio/CharBuffer;
    invoke-virtual {v1}, Ljava/nio/CharBuffer;->array()[C

    move-result-object v3

    return-object v3
.end method

.method public static getCharset(Ljava/util/Locale;)Ljava/lang/String;
    .locals 5
    .param p0, "locale"    # Ljava/util/Locale;

    .prologue
    .line 107
    sget-object v3, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 108
    .local v0, "charset":Ljava/lang/String;
    if-eqz v0, :cond_0

    move-object v1, v0

    .end local v0    # "charset":Ljava/lang/String;
    .local v1, "charset":Ljava/lang/String;
    move-object v2, v0

    .line 115
    .end local v1    # "charset":Ljava/lang/String;
    .local v2, "charset":Ljava/lang/String;
    :goto_0
    return-object v2

    .line 111
    .end local v2    # "charset":Ljava/lang/String;
    .restart local v0    # "charset":Ljava/lang/String;
    :cond_0
    sget-object v3, Lcom/lsec/core/util/FuncUtils;->LOCALE_TO_CHARSET_MAP:Ljava/util/Hashtable;

    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "charset":Ljava/lang/String;
    check-cast v0, Ljava/lang/String;

    .line 112
    .restart local v0    # "charset":Ljava/lang/String;
    if-nez v0, :cond_1

    .line 113
    const-string v0, "GB18030"

    :cond_1
    move-object v1, v0

    .end local v0    # "charset":Ljava/lang/String;
    .restart local v1    # "charset":Ljava/lang/String;
    move-object v2, v0

    .line 115
    .end local v1    # "charset":Ljava/lang/String;
    .restart local v2    # "charset":Ljava/lang/String;
    goto :goto_0
.end method

.method public static getCurrentTime(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 322
    invoke-static {p0}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v0, "H:mm"

    .line 323
    .local v0, "formatTime":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/text/SimpleDateFormat;

    invoke-direct {v1, v0}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 322
    .end local v0    # "formatTime":Ljava/lang/String;
    :cond_0
    const-string v0, "h:mm"

    goto :goto_0
.end method

.method public static getDateStr()Ljava/lang/String;
    .locals 2

    .prologue
    .line 303
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/text/DateFormat;->getDateInstance(I)Ljava/text/DateFormat;

    move-result-object v0

    new-instance v1, Ljava/util/Date;

    invoke-direct {v1}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getDisplayMetrics(Landroid/content/Context;)V
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1009
    if-eqz p0, :cond_0

    .line 1010
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 1011
    .local v3, "wm":Landroid/view/WindowManager;
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v0

    .line 1012
    .local v0, "display":Landroid/view/Display;
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    invoke-virtual {v0, v4}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1013
    new-instance v2, Landroid/graphics/Point;

    invoke-direct {v2}, Landroid/graphics/Point;-><init>()V

    .line 1015
    .local v2, "realSize":Landroid/graphics/Point;
    :try_start_0
    const-class v4, Landroid/view/Display;

    const-string v5, "getRealSize"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/graphics/Point;

    aput-object v8, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    invoke-virtual {v4, v0, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 1016
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v2, Landroid/graphics/Point;->x:I

    iput v5, v4, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 1017
    sget-object v4, Lcom/lsec/core/util/FuncUtils;->mDispayMetrics:Landroid/util/DisplayMetrics;

    iget v5, v2, Landroid/graphics/Point;->y:I

    iput v5, v4, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1022
    .end local v0    # "display":Landroid/view/Display;
    .end local v2    # "realSize":Landroid/graphics/Point;
    .end local v3    # "wm":Landroid/view/WindowManager;
    :cond_0
    :goto_0
    return-void

    .line 1018
    .restart local v0    # "display":Landroid/view/Display;
    .restart local v2    # "realSize":Landroid/graphics/Point;
    .restart local v3    # "wm":Landroid/view/WindowManager;
    :catch_0
    move-exception v1

    .line 1019
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getDrawableFromPath(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    .locals 6
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 1102
    const/4 v3, 0x0

    .line 1104
    .local v3, "is":Ljava/io/InputStream;
    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1105
    .local v2, "file":Ljava/io/File;
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/OutOfMemoryError; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1106
    .end local v3    # "is":Ljava/io/InputStream;
    .local v4, "is":Ljava/io/InputStream;
    :try_start_1
    invoke-static {v4}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 1107
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    if-eqz v0, :cond_3

    .line 1108
    new-instance v5, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v5, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_8
    .catch Ljava/lang/OutOfMemoryError; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1115
    if-eqz v4, :cond_0

    .line 1116
    :try_start_2
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :cond_0
    :goto_0
    move-object v3, v4

    .line 1122
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :goto_1
    return-object v5

    .line 1117
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_0
    move-exception v1

    .line 1118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1109
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "file":Ljava/io/File;
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    :catch_1
    move-exception v1

    .line 1110
    .restart local v1    # "e":Ljava/lang/Exception;
    :goto_2
    :try_start_3
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1115
    if-eqz v3, :cond_1

    .line 1116
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_2

    .line 1122
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    :goto_3
    const/4 v5, 0x0

    goto :goto_1

    .line 1117
    .restart local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    .line 1118
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1111
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_3
    move-exception v1

    .line 1112
    .local v1, "e":Ljava/lang/OutOfMemoryError;
    :goto_4
    :try_start_5
    invoke-virtual {v1}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1115
    if-eqz v3, :cond_1

    .line 1116
    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4

    goto :goto_3

    .line 1117
    :catch_4
    move-exception v1

    .line 1118
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 1113
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v5

    .line 1115
    :goto_5
    if-eqz v3, :cond_2

    .line 1116
    :try_start_7
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_5

    .line 1120
    :cond_2
    :goto_6
    throw v5

    .line 1117
    :catch_5
    move-exception v1

    .line 1118
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 1115
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v0    # "bitmap":Landroid/graphics/Bitmap;
    .restart local v2    # "file":Ljava/io/File;
    .restart local v4    # "is":Ljava/io/InputStream;
    :cond_3
    if-eqz v4, :cond_4

    .line 1116
    :try_start_8
    invoke-virtual {v4}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6

    move-object v3, v4

    .line 1117
    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_6
    move-exception v1

    .line 1118
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .end local v1    # "e":Ljava/lang/Exception;
    :cond_4
    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_3

    .line 1113
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catchall_1
    move-exception v5

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_5

    .line 1111
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_7
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_4

    .line 1109
    .end local v3    # "is":Ljava/io/InputStream;
    .restart local v4    # "is":Ljava/io/InputStream;
    :catch_8
    move-exception v1

    move-object v3, v4

    .end local v4    # "is":Ljava/io/InputStream;
    .restart local v3    # "is":Ljava/io/InputStream;
    goto :goto_2
.end method

.method public static getExternalStorageDirectory()Ljava/lang/String;
    .locals 14

    .prologue
    const/4 v13, 0x1

    .line 535
    new-instance v3, Ljava/lang/String;

    invoke-direct {v3}, Ljava/lang/String;-><init>()V

    .line 536
    .local v3, "dir":Ljava/lang/String;
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v10

    .line 537
    .local v10, "runtime":Ljava/lang/Runtime;
    const/4 v9, 0x0

    .line 538
    .local v9, "proc":Ljava/lang/Process;
    const/4 v5, 0x0

    .line 539
    .local v5, "is":Ljava/io/InputStream;
    const/4 v6, 0x0

    .line 540
    .local v6, "isr":Ljava/io/InputStreamReader;
    const/4 v0, 0x0

    .line 542
    .local v0, "br":Ljava/io/BufferedReader;
    :try_start_0
    const-string v11, "mount"

    invoke-virtual {v10, v11}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v9

    .line 543
    invoke-virtual {v9}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v5

    .line 544
    new-instance v7, Ljava/io/InputStreamReader;

    invoke-direct {v7, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 546
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .local v7, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v1, Ljava/io/BufferedReader;

    invoke-direct {v1, v7}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_d
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 547
    .end local v0    # "br":Ljava/io/BufferedReader;
    .local v1, "br":Ljava/io/BufferedReader;
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_e
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v8

    .local v8, "line":Ljava/lang/String;
    if-nez v8, :cond_5

    .line 568
    if-eqz v1, :cond_1

    .line 569
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_9

    .line 575
    :cond_1
    :goto_1
    if-eqz v7, :cond_2

    .line 576
    :try_start_4
    invoke-virtual {v7}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_a

    .line 582
    :cond_2
    :goto_2
    if-eqz v5, :cond_3

    .line 583
    :try_start_5
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_b

    .line 589
    :cond_3
    :goto_3
    if-eqz v9, :cond_e

    .line 590
    :try_start_6
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_c

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .line 596
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :cond_4
    :goto_4
    return-object v3

    .line 548
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :cond_5
    :try_start_7
    const-string v11, "secure"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 551
    const-string v11, "asec"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_0

    .line 554
    const-string v11, "fat"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_6

    .line 555
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 556
    .local v2, "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-le v11, v13, :cond_0

    .line 557
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 558
    goto :goto_0

    .end local v2    # "columns":[Ljava/lang/String;
    :cond_6
    const-string v11, "fuse"

    invoke-virtual {v8, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 559
    const-string v11, " "

    invoke-virtual {v8, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 560
    .restart local v2    # "columns":[Ljava/lang/String;
    if-eqz v2, :cond_0

    array-length v11, v2

    if-le v11, v13, :cond_0

    .line 561
    new-instance v11, Ljava/lang/StringBuilder;

    const/4 v12, 0x1

    aget-object v12, v2, v12

    invoke-static {v12}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v3, v11}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_e
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v3

    goto/16 :goto_0

    .line 564
    .end local v1    # "br":Ljava/io/BufferedReader;
    .end local v2    # "columns":[Ljava/lang/String;
    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    :catch_0
    move-exception v4

    .line 565
    .local v4, "e":Ljava/lang/Exception;
    :goto_5
    :try_start_8
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 568
    if-eqz v0, :cond_7

    .line 569
    :try_start_9
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_2

    .line 575
    :cond_7
    :goto_6
    if-eqz v6, :cond_8

    .line 576
    :try_start_a
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_3

    .line 582
    :cond_8
    :goto_7
    if-eqz v5, :cond_9

    .line 583
    :try_start_b
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 589
    :cond_9
    :goto_8
    if-eqz v9, :cond_4

    .line 590
    :try_start_c
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1

    goto/16 :goto_4

    .line 591
    :catch_1
    move-exception v4

    .line 592
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_4

    .line 570
    :catch_2
    move-exception v4

    .line 571
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 577
    :catch_3
    move-exception v4

    .line 578
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_7

    .line 584
    :catch_4
    move-exception v4

    .line 585
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 566
    .end local v4    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v11

    .line 568
    :goto_9
    if-eqz v0, :cond_a

    .line 569
    :try_start_d
    invoke-virtual {v0}, Ljava/io/BufferedReader;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_5

    .line 575
    :cond_a
    :goto_a
    if-eqz v6, :cond_b

    .line 576
    :try_start_e
    invoke-virtual {v6}, Ljava/io/InputStreamReader;->close()V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_6

    .line 582
    :cond_b
    :goto_b
    if-eqz v5, :cond_c

    .line 583
    :try_start_f
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_f
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_f} :catch_7

    .line 589
    :cond_c
    :goto_c
    if-eqz v9, :cond_d

    .line 590
    :try_start_10
    invoke-virtual {v9}, Ljava/lang/Process;->destroy()V
    :try_end_10
    .catch Ljava/lang/Exception; {:try_start_10 .. :try_end_10} :catch_8

    .line 594
    :cond_d
    :goto_d
    throw v11

    .line 570
    :catch_5
    move-exception v4

    .line 571
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 577
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v4

    .line 578
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_b

    .line 584
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_7
    move-exception v4

    .line 585
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_c

    .line 591
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v4

    .line 592
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d

    .line 570
    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v8    # "line":Ljava/lang/String;
    :catch_9
    move-exception v4

    .line 571
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_1

    .line 577
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_a
    move-exception v4

    .line 578
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_2

    .line 584
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_b
    move-exception v4

    .line 585
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3

    .line 591
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_c
    move-exception v4

    .line 592
    .restart local v4    # "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .end local v4    # "e":Ljava/lang/Exception;
    :cond_e
    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto/16 :goto_4

    .line 566
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .end local v8    # "line":Ljava/lang/String;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_1
    move-exception v11

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_9

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catchall_2
    move-exception v11

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_9

    .line 564
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_d
    move-exception v4

    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_5

    .end local v0    # "br":Ljava/io/BufferedReader;
    .end local v6    # "isr":Ljava/io/InputStreamReader;
    .restart local v1    # "br":Ljava/io/BufferedReader;
    .restart local v7    # "isr":Ljava/io/InputStreamReader;
    :catch_e
    move-exception v4

    move-object v0, v1

    .end local v1    # "br":Ljava/io/BufferedReader;
    .restart local v0    # "br":Ljava/io/BufferedReader;
    move-object v6, v7

    .end local v7    # "isr":Ljava/io/InputStreamReader;
    .restart local v6    # "isr":Ljava/io/InputStreamReader;
    goto :goto_5
.end method

.method public static getFileExtension(Ljava/io/File;)Ljava/lang/String;
    .locals 4
    .param p0, "f"    # Ljava/io/File;

    .prologue
    .line 243
    if-eqz p0, :cond_0

    .line 244
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    .line 245
    .local v0, "filename":Ljava/lang/String;
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v1

    .line 246
    .local v1, "i":I
    if-lez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    if-ge v1, v2, :cond_0

    .line 247
    add-int/lit8 v2, v1, 0x1

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    .line 249
    .end local v0    # "filename":Ljava/lang/String;
    .end local v1    # "i":I
    :goto_0
    return-object v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static getFileNameNoSuffix(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "strNameWithSuffix"    # Ljava/lang/String;

    .prologue
    .line 655
    const-string v1, " "

    .line 656
    .local v1, "strName":Ljava/lang/String;
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 657
    move-object v1, p0

    .line 658
    const-string v2, "."

    invoke-virtual {p0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    .line 659
    .local v0, "posDot":I
    if-ltz v0, :cond_0

    .line 660
    const/4 v2, 0x0

    invoke-virtual {p0, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 663
    .end local v0    # "posDot":I
    :cond_0
    return-object v1
.end method

.method public static getFormatSize(D)Ljava/lang/String;
    .locals 16
    .param p0, "size"    # D

    .prologue
    .line 508
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v2, p0, v12

    .line 509
    .local v2, "kiloByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v2, v12

    if-gez v12, :cond_0

    .line 510
    new-instance v12, Ljava/lang/StringBuilder;

    invoke-static/range {p0 .. p1}, Ljava/lang/String;->valueOf(D)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "Byte(s)"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 531
    :goto_0
    return-object v12

    .line 512
    :cond_0
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v4, v2, v12

    .line 513
    .local v4, "megaByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v4, v12

    if-gez v12, :cond_1

    .line 514
    new-instance v6, Ljava/math/BigDecimal;

    invoke-static {v2, v3}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v6, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 515
    .local v6, "result1":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v6, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "KB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 518
    .end local v6    # "result1":Ljava/math/BigDecimal;
    :cond_1
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v0, v4, v12

    .line 519
    .local v0, "gigaByte":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v0, v12

    if-gez v12, :cond_2

    .line 520
    new-instance v7, Ljava/math/BigDecimal;

    invoke-static {v4, v5}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v7, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 521
    .local v7, "result2":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v7, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "MB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto :goto_0

    .line 524
    .end local v7    # "result2":Ljava/math/BigDecimal;
    :cond_2
    const-wide/high16 v12, 0x4090000000000000L    # 1024.0

    div-double v10, v0, v12

    .line 525
    .local v10, "teraBytes":D
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    cmpg-double v12, v10, v12

    if-gez v12, :cond_3

    .line 526
    new-instance v8, Ljava/math/BigDecimal;

    invoke-static {v0, v1}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v12

    invoke-direct {v8, v12}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .line 527
    .local v8, "result3":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v8, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "GB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0

    .line 530
    .end local v8    # "result3":Ljava/math/BigDecimal;
    :cond_3
    new-instance v9, Ljava/math/BigDecimal;

    invoke-direct {v9, v10, v11}, Ljava/math/BigDecimal;-><init>(D)V

    .line 531
    .local v9, "result4":Ljava/math/BigDecimal;
    new-instance v12, Ljava/lang/StringBuilder;

    const/4 v13, 0x2

    const/4 v14, 0x4

    invoke-virtual {v9, v13, v14}, Ljava/math/BigDecimal;->setScale(II)Ljava/math/BigDecimal;

    move-result-object v13

    invoke-virtual {v13}, Ljava/math/BigDecimal;->toPlainString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v13}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v13

    invoke-direct {v12, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v13, "TB"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_0
.end method

.method public static getIdStyle(Landroid/content/Context;Ljava/lang/String;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 283
    if-eqz p0, :cond_0

    .line 284
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const-string v1, "style"

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, p1, v1, v2}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 286
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getNavigationBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 876
    const/4 v4, -0x1

    .line 878
    .local v4, "statusHeight":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 879
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 880
    .local v3, "object":Ljava/lang/Object;
    const-string v5, "navigation_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 881
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 886
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "height":I
    .end local v3    # "object":Ljava/lang/Object;
    :goto_0
    return v4

    .line 882
    :catch_0
    move-exception v1

    .line 883
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getNumSlash(Ljava/lang/String;)I
    .locals 3
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 681
    const/4 v0, 0x0

    .line 682
    .local v0, "iNumSlash":I
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 683
    const-string v2, "/"

    invoke-virtual {p0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 684
    .local v1, "strArray":[Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 685
    array-length v0, v1

    .line 688
    .end local v1    # "strArray":[Ljava/lang/String;
    :cond_0
    return v0
.end method

.method public static getPhotoFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 630
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 631
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 632
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 633
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 634
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 635
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 636
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "image/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 637
    return-object v0
.end method

.method public static getSDcardSpace()I
    .locals 8

    .prologue
    .line 868
    new-instance v6, Landroid/os/StatFs;

    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    move-result-object v7

    invoke-virtual {v7}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    .line 869
    .local v6, "stat":Landroid/os/StatFs;
    invoke-virtual {v6}, Landroid/os/StatFs;->getBlockSize()I

    move-result v7

    int-to-long v2, v7

    .line 870
    .local v2, "blockSize":J
    invoke-virtual {v6}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v7

    int-to-long v0, v7

    .line 871
    .local v0, "availableBlocks":J
    mul-long v4, v2, v0

    .line 872
    .local v4, "left":J
    invoke-static {v4, v5}, Lcom/lsec/core/util/FuncUtils;->bytes2mb(J)I

    move-result v7

    return v7
.end method

.method public static getStatusHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 890
    const/4 v4, -0x1

    .line 892
    .local v4, "statusHeight":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 893
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v3

    .line 894
    .local v3, "object":Ljava/lang/Object;
    const-string v5, "status_bar_height"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    .line 895
    .local v2, "height":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    .line 900
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "height":I
    .end local v3    # "object":Ljava/lang/Object;
    :goto_0
    return v4

    .line 896
    :catch_0
    move-exception v1

    .line 897
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getStatusWidth(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 904
    const/4 v3, -0x1

    .line 906
    .local v3, "statusWidth":I
    :try_start_0
    const-string v5, "com.android.internal.R$dimen"

    invoke-static {v5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 907
    .local v0, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v2

    .line 908
    .local v2, "object":Ljava/lang/Object;
    const-string v5, "status_bar_width"

    invoke-virtual {v0, v5}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    .line 909
    .local v4, "width":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 914
    .end local v0    # "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    .end local v2    # "object":Ljava/lang/Object;
    .end local v4    # "width":I
    :goto_0
    return v3

    .line 910
    :catch_0
    move-exception v1

    .line 911
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTimeUtil(ZLandroid/content/Context;)Ljava/lang/CharSequence;
    .locals 4
    .param p0, "isLocal"    # Z
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 307
    const-string v1, ""

    .line 309
    .local v1, "temp":Ljava/lang/String;
    :try_start_0
    invoke-static {p1}, Landroid/text/format/DateFormat;->is24HourFormat(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 310
    if-eqz p0, :cond_1

    .line 311
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-static {v2}, Landroid/text/format/DateUtils;->getAMPMString(I)Ljava/lang/String;

    move-result-object v1

    .line 318
    :cond_0
    :goto_0
    return-object v1

    .line 313
    :cond_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/16 v3, 0x9

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    if-nez v2, :cond_2

    const-string v1, "AM"

    :goto_1
    goto :goto_0

    :cond_2
    const-string v1, "PM"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 315
    :catch_0
    move-exception v0

    .line 316
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getTypefaceFromFile(Ljava/lang/String;)Landroid/graphics/Typeface;
    .locals 3
    .param p0, "fontPath"    # Ljava/lang/String;

    .prologue
    .line 290
    sget-object v2, Lcom/lsec/core/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 291
    sget-object v2, Lcom/lsec/core/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Typeface;

    .line 299
    :goto_0
    return-object v2

    .line 293
    :cond_0
    const/4 v1, 0x0

    .line 294
    .local v1, "typeface":Landroid/graphics/Typeface;
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 295
    .local v0, "fontFile":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 296
    invoke-static {v0}, Landroid/graphics/Typeface;->createFromFile(Ljava/io/File;)Landroid/graphics/Typeface;

    move-result-object v1

    .line 298
    :cond_1
    sget-object v2, Lcom/lsec/core/util/FuncUtils;->mTypeFaces:Ljava/util/HashMap;

    invoke-virtual {v2, p0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v2, v1

    .line 299
    goto :goto_0
.end method

.method public static getUnsignedByte(B)I
    .locals 1
    .param p0, "b"    # B

    .prologue
    .line 792
    and-int/lit16 v0, p0, 0xff

    return v0
.end method

.method public static getUrlExtension(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0, "url"    # Ljava/lang/String;

    .prologue
    .line 253
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 254
    const/16 v1, 0x2e

    invoke-virtual {p0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    .line 255
    .local v0, "i":I
    if-lez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ge v0, v1, :cond_0

    .line 256
    add-int/lit8 v1, v0, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 259
    .end local v0    # "i":I
    :goto_0
    return-object v1

    :cond_0
    const-string v1, ""

    goto :goto_0
.end method

.method public static getVal(III)I
    .locals 0
    .param p0, "value"    # I
    .param p1, "min"    # I
    .param p2, "max"    # I

    .prologue
    .line 692
    if-ge p0, p1, :cond_0

    .line 698
    .end local p1    # "min":I
    :goto_0
    return p1

    .line 695
    .restart local p1    # "min":I
    :cond_0
    if-le p0, p2, :cond_1

    move p1, p2

    .line 696
    goto :goto_0

    :cond_1
    move p1, p0

    .line 698
    goto :goto_0
.end method

.method public static getVideoFileIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 4
    .param p0, "strPath"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 608
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 609
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v2, 0x4000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 610
    const/high16 v2, 0x10000000

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 611
    const-string v2, "oneshot"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 612
    const-string v2, "configchange"

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 613
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v1

    .line 614
    .local v1, "uri":Landroid/net/Uri;
    const-string v2, "video/*"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    .line 615
    return-object v0
.end method

.method public static intTo0xChar(I)C
    .locals 3
    .param p0, "data"    # I

    .prologue
    .line 176
    const/4 v0, 0x0

    .line 177
    .local v0, "ret":C
    if-ltz p0, :cond_0

    const/16 v2, 0xf

    if-le p0, v2, :cond_1

    .line 178
    :cond_0
    const/16 v2, 0x3f

    move v1, v0

    .line 185
    .end local v0    # "ret":C
    .local v1, "ret":C
    :goto_0
    return v2

    .line 180
    .end local v1    # "ret":C
    .restart local v0    # "ret":C
    :cond_1
    const/16 v2, 0xa

    if-ge p0, v2, :cond_2

    .line 181
    add-int/lit8 v2, p0, 0x30

    int-to-char v0, v2

    :goto_1
    move v1, v0

    .end local v0    # "ret":C
    .restart local v1    # "ret":C
    move v2, v0

    .line 185
    goto :goto_0

    .line 183
    .end local v1    # "ret":C
    .restart local v0    # "ret":C
    :cond_2
    add-int/lit8 v2, p0, -0xa

    add-int/lit8 v2, v2, 0x61

    int-to-char v0, v2

    goto :goto_1
.end method

.method public static isAppInstalled(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 937
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 951
    :cond_0
    :goto_0
    return v2

    .line 940
    :cond_1
    const/4 v0, 0x0

    .line 941
    .local v0, "packageInfo":Landroid/content/pm/PackageInfo;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 943
    .local v1, "packageManager":Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v1, p1, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 948
    :goto_1
    if-eqz v0, :cond_0

    .line 949
    const/4 v2, 0x1

    goto :goto_0

    .line 944
    :catch_0
    move-exception v3

    goto :goto_1
.end method

.method public static isEquals(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "des"    # Ljava/lang/String;

    .prologue
    .line 413
    const/4 v0, 0x0

    .line 414
    .local v0, "bRet":Z
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    .line 415
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 417
    :cond_0
    return v0
.end method

.method public static isFastDoubleClick()Z
    .locals 6

    .prologue
    .line 137
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 138
    .local v0, "time":J
    sget-wide v2, Lcom/lsec/core/util/FuncUtils;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    const-wide/16 v4, 0x190

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 139
    const/4 v2, 0x1

    .line 142
    :goto_0
    return v2

    .line 141
    :cond_0
    sput-wide v0, Lcom/lsec/core/util/FuncUtils;->lastClickTime:J

    .line 142
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFastDoubleClick(I)Z
    .locals 6
    .param p0, "mills"    # I

    .prologue
    .line 146
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 147
    .local v0, "time":J
    sget-wide v2, Lcom/lsec/core/util/FuncUtils;->lastClickTime:J

    sub-long v2, v0, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->abs(J)J

    move-result-wide v2

    int-to-long v4, p0

    cmp-long v2, v2, v4

    if-gez v2, :cond_0

    .line 148
    const/4 v2, 0x1

    .line 151
    :goto_0
    return v2

    .line 150
    :cond_0
    sput-wide v0, Lcom/lsec/core/util/FuncUtils;->lastClickTime:J

    .line 151
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static isFileExist(Ljava/lang/String;)Z
    .locals 2
    .param p0, "strFile"    # Ljava/lang/String;

    .prologue
    .line 600
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 601
    const/4 v1, 0x0

    .line 604
    :goto_0
    return v1

    .line 603
    :cond_0
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 604
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    goto :goto_0
.end method

.method public static isLangZh()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 1064
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1065
    .local v0, "localeDefault":Ljava/util/Locale;
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_0

    .line 1066
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1068
    :cond_0
    if-eqz v0, :cond_1

    .line 1069
    invoke-virtual {v0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v1

    .line 1070
    .local v1, "strLang":Ljava/lang/String;
    const-string v3, "zh"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1071
    const/4 v2, 0x1

    .line 1074
    .end local v1    # "strLang":Ljava/lang/String;
    :cond_1
    return v2
.end method

.method public static isLongLang()Z
    .locals 3

    .prologue
    .line 1078
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    .line 1079
    .local v0, "localeDefault":Ljava/util/Locale;
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x18

    if-lt v1, v2, :cond_0

    .line 1080
    invoke-static {}, Landroid/os/LocaleList;->getDefault()Landroid/os/LocaleList;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/os/LocaleList;->get(I)Ljava/util/Locale;

    move-result-object v0

    .line 1082
    :cond_0
    invoke-static {v0}, Lcom/lsec/core/util/FuncUtils;->isLongLang(Ljava/util/Locale;)Z

    move-result v1

    return v1
.end method

.method public static isLongLang(Ljava/util/Locale;)Z
    .locals 3
    .param p0, "localeDefault"    # Ljava/util/Locale;

    .prologue
    const/4 v1, 0x1

    .line 1086
    if-eqz p0, :cond_2

    .line 1087
    invoke-virtual {p0}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v0

    .line 1088
    .local v0, "strLang":Ljava/lang/String;
    const-string v2, "vi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1098
    .end local v0    # "strLang":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 1091
    .restart local v0    # "strLang":Ljava/lang/String;
    :cond_1
    const-string v2, "ko"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1094
    const-string v2, "ru"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1098
    .end local v0    # "strLang":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static makeInt(BB)I
    .locals 2
    .param p0, "high"    # B
    .param p1, "low"    # B

    .prologue
    .line 713
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x8

    and-int/lit16 v1, p1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static makeInt(BBB)I
    .locals 2
    .param p0, "high"    # B
    .param p1, "mid"    # B
    .param p2, "low"    # B

    .prologue
    .line 717
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x10

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static makeInt(BBBB)I
    .locals 2
    .param p0, "B3"    # B
    .param p1, "B2"    # B
    .param p2, "B1"    # B
    .param p3, "B0"    # B

    .prologue
    .line 721
    and-int/lit16 v0, p0, 0xff

    shl-int/lit8 v0, v0, 0x18

    and-int/lit16 v1, p1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    and-int/lit16 v1, p2, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    and-int/lit16 v1, p3, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method public static msFDuration(J)Ljava/lang/String;
    .locals 14
    .param p0, "s"    # J

    .prologue
    const/4 v12, 0x2

    const-wide/16 v10, 0xe10

    const/4 v9, 0x1

    const/4 v8, 0x0

    const-wide/16 v6, 0x3c

    .line 376
    const-wide/16 v2, 0x3e8

    div-long/2addr p0, v2

    .line 377
    const-string v0, ""

    .line 378
    .local v0, "str":Ljava/lang/String;
    const-wide/16 v2, 0x0

    cmp-long v1, p0, v2

    if-gez v1, :cond_0

    .line 379
    const-string v0, "00:00"

    .line 387
    :goto_0
    return-object v0

    .line 380
    :cond_0
    cmp-long v1, p0, v6

    if-gez v1, :cond_1

    .line 381
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "00:%02d"

    new-array v3, v9, [Ljava/lang/Object;

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 382
    :cond_1
    cmp-long v1, p0, v10

    if-gez v1, :cond_2

    .line 383
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%02d:%02d"

    new-array v3, v12, [Ljava/lang/Object;

    div-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 385
    :cond_2
    sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;

    const-string v2, "%d %02d:%02d"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    div-long v4, p0, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    rem-long v4, p0, v10

    div-long/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v9

    rem-long v4, p0, v6

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v12

    invoke-static {v1, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static myParseColor(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 980
    :try_start_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 985
    :goto_0
    return v0

    .line 981
    :catch_0
    move-exception v0

    .line 985
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static myParseInt(Ljava/lang/String;)I
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 960
    :try_start_0
    invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 965
    :goto_0
    return v0

    .line 961
    :catch_0
    move-exception v0

    .line 965
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static myParseLong(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 970
    :try_start_0
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 975
    :goto_0
    return-wide v0

    .line 971
    :catch_0
    move-exception v0

    .line 975
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static myParseTime(Ljava/lang/String;)J
    .locals 2
    .param p0, "str"    # Ljava/lang/String;

    .prologue
    .line 990
    :try_start_0
    invoke-static {p0}, Ljava/util/Date;->parse(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    .line 995
    :goto_0
    return-wide v0

    .line 991
    :catch_0
    move-exception v0

    .line 995
    const-wide/16 v0, 0x0

    goto :goto_0
.end method

.method public static openApp(Ljava/lang/String;Landroid/content/Context;)V
    .locals 2
    .param p0, "packageName"    # Ljava/lang/String;
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1025
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1026
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 1027
    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1028
    :cond_0
    return-void
.end method

.method public static px2dp(Landroid/content/Context;F)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "pxValue"    # F

    .prologue
    .line 1004
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v0, v1, Landroid/util/DisplayMetrics;->density:F

    .line 1005
    .local v0, "scale":F
    div-float v1, p1, v0

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method public static readFile(Ljava/lang/String;)[B
    .locals 4
    .param p0, "path"    # Ljava/lang/String;

    .prologue
    .line 762
    const/4 v0, 0x0

    .line 764
    .local v0, "buffer":[B
    :try_start_0
    new-instance v2, Ljava/io/FileInputStream;

    invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 765
    .local v2, "in":Ljava/io/InputStream;
    invoke-virtual {v2}, Ljava/io/InputStream;->available()I

    move-result v3

    new-array v0, v3, [B

    .line 766
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    .line 767
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    .end local v2    # "in":Ljava/io/InputStream;
    :goto_0
    return-object v0

    .line 768
    :catch_0
    move-exception v1

    .line 769
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static readStrFromStream(Ljava/io/InputStream;)Ljava/lang/String;
    .locals 9
    .param p0, "is"    # Ljava/io/InputStream;

    .prologue
    .line 421
    const/4 v7, 0x0

    .line 422
    .local v7, "strRet":Ljava/lang/String;
    if-eqz p0, :cond_2

    .line 423
    const/4 v2, 0x0

    .line 424
    .local v2, "isr":Ljava/io/InputStreamReader;
    const/4 v4, 0x0

    .line 426
    .local v4, "reader":Ljava/io/BufferedReader;
    :try_start_0
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_a
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 427
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .local v3, "isr":Ljava/io/InputStreamReader;
    :try_start_1
    new-instance v5, Ljava/io/BufferedReader;

    invoke-direct {v5, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_b
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 430
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .local v5, "reader":Ljava/io/BufferedReader;
    :try_start_2
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 431
    .local v0, "buffer":Ljava/lang/StringBuffer;
    :goto_0
    invoke-virtual {v5}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v6

    .local v6, "str":Ljava/lang/String;
    if-nez v6, :cond_3

    .line 434
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-object v7

    .line 439
    if-eqz v5, :cond_0

    .line 440
    :try_start_3
    invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7

    .line 446
    :cond_0
    :goto_1
    if-eqz v3, :cond_1

    .line 447
    :try_start_4
    invoke-virtual {v3}, Ljava/io/InputStreamReader;->close()V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_8

    .line 453
    :cond_1
    :goto_2
    if-eqz p0, :cond_2

    .line 454
    :try_start_5
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_9

    .line 461
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    :cond_2
    :goto_3
    return-object v7

    .line 432
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :cond_3
    :try_start_6
    invoke-virtual {v0, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_0
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    goto :goto_0

    .line 435
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v6    # "str":Ljava/lang/String;
    :catch_0
    move-exception v1

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .line 436
    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .local v1, "e":Ljava/lang/Exception;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    :goto_4
    :try_start_7
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 439
    if-eqz v4, :cond_4

    .line 440
    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_2

    .line 446
    :cond_4
    :goto_5
    if-eqz v2, :cond_5

    .line 447
    :try_start_9
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_3

    .line 453
    :cond_5
    :goto_6
    if-eqz p0, :cond_2

    .line 454
    :try_start_a
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1

    goto :goto_3

    .line 455
    :catch_1
    move-exception v1

    .line 456
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 441
    :catch_2
    move-exception v1

    .line 442
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_5

    .line 448
    :catch_3
    move-exception v1

    .line 449
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_6

    .line 437
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v8

    .line 439
    :goto_7
    if-eqz v4, :cond_6

    .line 440
    :try_start_b
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_4

    .line 446
    :cond_6
    :goto_8
    if-eqz v2, :cond_7

    .line 447
    :try_start_c
    invoke-virtual {v2}, Ljava/io/InputStreamReader;->close()V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_5

    .line 453
    :cond_7
    :goto_9
    if-eqz p0, :cond_8

    .line 454
    :try_start_d
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 458
    :cond_8
    :goto_a
    throw v8

    .line 441
    :catch_4
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_8

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_5
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_9

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_6
    move-exception v1

    .line 456
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_a

    .line 441
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v0    # "buffer":Ljava/lang/StringBuffer;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v6    # "str":Ljava/lang/String;
    :catch_7
    move-exception v1

    .line 442
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 448
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_8
    move-exception v1

    .line 449
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_2

    .line 455
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_9
    move-exception v1

    .line 456
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_3

    .line 437
    .end local v0    # "buffer":Ljava/lang/StringBuffer;
    .end local v1    # "e":Ljava/lang/Exception;
    .end local v5    # "reader":Ljava/io/BufferedReader;
    .end local v6    # "str":Ljava/lang/String;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    :catchall_1
    move-exception v8

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .end local v4    # "reader":Ljava/io/BufferedReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v5    # "reader":Ljava/io/BufferedReader;
    :catchall_2
    move-exception v8

    move-object v4, v5

    .end local v5    # "reader":Ljava/io/BufferedReader;
    .restart local v4    # "reader":Ljava/io/BufferedReader;
    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_7

    .line 435
    :catch_a
    move-exception v1

    goto :goto_4

    .end local v2    # "isr":Ljava/io/InputStreamReader;
    .restart local v3    # "isr":Ljava/io/InputStreamReader;
    :catch_b
    move-exception v1

    move-object v2, v3

    .end local v3    # "isr":Ljava/io/InputStreamReader;
    .restart local v2    # "isr":Ljava/io/InputStreamReader;
    goto :goto_4
.end method

.method public static requestPermission()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 843
    const-string v0, "chmod 666 /dev/alarm"

    invoke-static {v0}, Lcom/lsec/core/util/FuncUtils;->createSuProcess(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Process;->waitFor()I

    .line 844
    return-void
.end method

.method public static sFDuration(I)Ljava/lang/String;
    .locals 7
    .param p0, "data"    # I

    .prologue
    const/16 v6, 0xa

    .line 349
    if-gtz p0, :cond_0

    .line 350
    const-string v4, "00:00"

    .line 372
    :goto_0
    return-object v4

    .line 352
    :cond_0
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 353
    .local v2, "sDest":Ljava/lang/StringBuffer;
    const/4 v0, 0x0

    .line 354
    .local v0, "hour":I
    const/4 v1, 0x0

    .line 355
    .local v1, "minute":I
    const/4 v3, 0x0

    .line 357
    .local v3, "second":I
    rem-int/lit8 v3, p0, 0x3c

    .line 358
    div-int/lit8 v4, p0, 0x3c

    rem-int/lit8 v1, v4, 0x3c

    .line 359
    div-int/lit8 v4, p0, 0x3c

    div-int/lit8 v4, v4, 0x3c

    rem-int/lit8 v0, v4, 0x3c

    .line 361
    if-lez v0, :cond_1

    .line 362
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 364
    :cond_1
    if-ge v1, v6, :cond_2

    .line 365
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 367
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 368
    if-ge v3, v6, :cond_3

    .line 369
    const-string v4, "0"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    .line 371
    :cond_3
    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(I)Ljava/lang/StringBuffer;

    .line 372
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0
.end method

.method public static saveBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
    .locals 6
    .param p0, "strPath"    # Ljava/lang/String;
    .param p1, "b"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1046
    const/4 v2, 0x0

    .line 1048
    .local v2, "fos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1049
    .local v1, "f":Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1050
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 1052
    :cond_0
    new-instance v3, Ljava/io/FileOutputStream;

    invoke-direct {v3, v1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1053
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .local v3, "fos":Ljava/io/FileOutputStream;
    if-eqz v3, :cond_1

    .line 1054
    :try_start_1
    sget-object v4, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v5, 0x64

    invoke-virtual {p1, v4, v5, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 1055
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->flush()V

    .line 1056
    invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v2, v3

    .line 1061
    .end local v1    # "f":Ljava/io/File;
    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1058
    :catch_0
    move-exception v0

    .line 1059
    .local v0, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1058
    .end local v0    # "e":Ljava/lang/Exception;
    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v1    # "f":Ljava/io/File;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :catch_1
    move-exception v0

    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_1

    .end local v2    # "fos":Ljava/io/FileOutputStream;
    .restart local v3    # "fos":Ljava/io/FileOutputStream;
    :cond_1
    move-object v2, v3

    .end local v3    # "fos":Ljava/io/FileOutputStream;
    .restart local v2    # "fos":Ljava/io/FileOutputStream;
    goto :goto_0
.end method

.method public static saveYUV2File(Ljava/lang/String;[BII)V
    .locals 10
    .param p0, "strPath"    # Ljava/lang/String;
    .param p1, "yuv"    # [B
    .param p2, "mWidth"    # I
    .param p3, "mHeight"    # I

    .prologue
    .line 1031
    const/4 v7, 0x0

    .line 1033
    .local v7, "outStream":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v0, Landroid/graphics/YuvImage;

    const/16 v2, 0x11

    const/4 v5, 0x0

    move-object v1, p1

    move v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Landroid/graphics/YuvImage;-><init>([BIII[I)V

    .line 1034
    .local v0, "image":Landroid/graphics/YuvImage;
    new-instance v9, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v9}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 1035
    .local v9, "stream":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Landroid/graphics/Rect;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    const/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v9}, Landroid/graphics/YuvImage;->compressToJpeg(Landroid/graphics/Rect;ILjava/io/OutputStream;)Z

    .line 1036
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1037
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    .local v8, "outStream":Ljava/io/FileOutputStream;
    :try_start_1
    invoke-virtual {v9}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/io/FileOutputStream;->write([B)V

    .line 1038
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->flush()V

    .line 1039
    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v7, v8

    .line 1043
    .end local v0    # "image":Landroid/graphics/YuvImage;
    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    .end local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    :goto_0
    return-void

    .line 1040
    :catch_0
    move-exception v6

    .line 1041
    .local v6, "e":Ljava/lang/Exception;
    :goto_1
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 1040
    .end local v6    # "e":Ljava/lang/Exception;
    .end local v7    # "outStream":Ljava/io/FileOutputStream;
    .restart local v0    # "image":Landroid/graphics/YuvImage;
    .restart local v8    # "outStream":Ljava/io/FileOutputStream;
    .restart local v9    # "stream":Ljava/io/ByteArrayOutputStream;
    :catch_1
    move-exception v6

    move-object v7, v8

    .end local v8    # "outStream":Ljava/io/FileOutputStream;
    .restart local v7    # "outStream":Ljava/io/FileOutputStream;
    goto :goto_1
.end method

.method public static setDateTime(II)V
    .locals 12
    .param p0, "hour"    # I
    .param p1, "minute"    # I

    .prologue
    const-wide/16 v10, 0x3e8

    .line 824
    :try_start_0
    invoke-static {}, Lcom/lsec/core/util/FuncUtils;->requestPermission()V

    .line 826
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 827
    .local v0, "c":Ljava/util/Calendar;
    const/16 v6, 0xb

    invoke-virtual {v0, v6, p0}, Ljava/util/Calendar;->set(II)V

    .line 828
    const/16 v6, 0xc

    invoke-virtual {v0, v6, p1}, Ljava/util/Calendar;->set(II)V

    .line 830
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    .line 831
    .local v4, "when":J
    const-wide/16 v6, 0x3e8

    div-long v6, v4, v6

    const-wide/32 v8, 0x7fffffff

    cmp-long v6, v6, v8

    if-gez v6, :cond_0

    .line 832
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 834
    :cond_0
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    .line 835
    .local v2, "now":J
    sub-long v6, v2, v4

    cmp-long v6, v6, v10

    if-lez v6, :cond_1

    .line 836
    new-instance v6, Ljava/io/IOException;

    const-string v7, "failed to set Date."

    invoke-direct {v6, v7}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v6
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    .end local v0    # "c":Ljava/util/Calendar;
    .end local v2    # "now":J
    .end local v4    # "when":J
    :catch_0
    move-exception v1

    .line 838
    .local v1, "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 840
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_1
    return-void
.end method

.method public static sleep(I)V
    .locals 4
    .param p0, "mills"    # I

    .prologue
    .line 156
    int-to-long v2, p0

    :try_start_0
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 160
    :goto_0
    return-void

    .line 157
    :catch_0
    move-exception v0

    .line 158
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static strEqual(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "a"    # Ljava/lang/String;
    .param p1, "b"    # Ljava/lang/String;

    .prologue
    .line 702
    if-nez p0, :cond_1

    .line 703
    if-eqz p1, :cond_0

    .line 704
    const/4 v0, 0x0

    .line 709
    :goto_0
    return v0

    .line 706
    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    .line 709
    :cond_1
    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0
.end method
