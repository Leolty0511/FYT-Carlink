.class public Lnet/lingala/zip4j/io/ZipIn;
.super Ljava/lang/Object;
.source "ZipIn.java"


# static fields
.field public static final BUFF_SIZE:I = 0x1000

.field public static CENSIG:J = 0x0L

.field public static final COMP_DEFLATE:I = 0x8

.field public static final COMP_STORE:I = 0x0

.field public static DIGSIG:J = 0x0L

.field public static final ENC_METHOD_STANDARD:I = 0x0

.field public static final ENDHDR:I = 0x16

.field public static ENDSIG:J = 0x0L

.field public static LOCSIG:J = 0x0L

.field public static final READ_MODE:Ljava/lang/String; = "r"

.field public static final STD_DEC_HDR_SIZE:I = 0xc


# instance fields
.field randomAccessFile:Ljava/io/RandomAccessFile;

.field strAsset:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 23
    const-wide/32 v0, 0x4034b50

    sput-wide v0, Lnet/lingala/zip4j/io/ZipIn;->LOCSIG:J

    .line 24
    const-wide/32 v0, 0x2014b50    # 1.6619997E-316

    sput-wide v0, Lnet/lingala/zip4j/io/ZipIn;->CENSIG:J

    .line 25
    const-wide/32 v0, 0x6054b50

    sput-wide v0, Lnet/lingala/zip4j/io/ZipIn;->ENDSIG:J

    .line 26
    const-wide/32 v0, 0x5054b50

    sput-wide v0, Lnet/lingala/zip4j/io/ZipIn;->DIGSIG:J

    .line 34
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 61
    return-void
.end method

.method public length()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public read([B)I
    .locals 2
    .param p1, "buf"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 56
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lnet/lingala/zip4j/io/ZipIn;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 1
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    const/4 v0, 0x0

    return v0
.end method

.method public readLeInt([B)J
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public readLongLittleEndian([B)J
    .locals 3
    .param p1, "b"    # [B

    .prologue
    .line 72
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x2

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/4 v2, 0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    shl-int/lit8 v2, v2, 0x8

    or-int/2addr v1, v2

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    int-to-long v0, v0

    return-wide v0
.end method

.method public readShortLittleEndian([B)I
    .locals 2
    .param p1, "b"    # [B

    .prologue
    .line 68
    const/4 v0, 0x0

    aget-byte v0, p1, v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    return v0
.end method

.method public seek(J)V
    .locals 0
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 45
    return-void
.end method

.method public skip(J)V
    .locals 0
    .param p1, "pos"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    return-void
.end method
