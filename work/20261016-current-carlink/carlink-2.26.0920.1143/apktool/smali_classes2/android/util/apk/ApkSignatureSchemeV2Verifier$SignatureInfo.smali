.class Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/apk/ApkSignatureSchemeV2Verifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SignatureInfo"
.end annotation


# instance fields
.field private final apkSigningBlockOffset:J

.field private final centralDirOffset:J

.field private final eocd:Ljava/nio/ByteBuffer;

.field private final eocdOffset:J

.field private final signatureBlock:Ljava/nio/ByteBuffer;


# direct methods
.method private constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    .line 4
    iput-wide p2, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->apkSigningBlockOffset:J

    .line 5
    iput-wide p4, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->centralDirOffset:J

    .line 6
    iput-wide p6, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocdOffset:J

    .line 7
    iput-object p8, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;Landroid/util/apk/ApkSignatureSchemeV2Verifier$1;)V
    .locals 0

    .line 1
    invoke-direct/range {p0 .. p8}, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;-><init>(Ljava/nio/ByteBuffer;JJJLjava/nio/ByteBuffer;)V

    return-void
.end method

.method public static synthetic access$100(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->signatureBlock:Ljava/nio/ByteBuffer;

    return-object p0
.end method

.method public static synthetic access$200(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->apkSigningBlockOffset:J

    return-wide v0
.end method

.method public static synthetic access$300(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->centralDirOffset:J

    return-wide v0
.end method

.method public static synthetic access$400(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)J
    .locals 2

    iget-wide v0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocdOffset:J

    return-wide v0
.end method

.method public static synthetic access$500(Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;)Ljava/nio/ByteBuffer;
    .locals 0

    iget-object p0, p0, Landroid/util/apk/ApkSignatureSchemeV2Verifier$SignatureInfo;->eocd:Ljava/nio/ByteBuffer;

    return-object p0
.end method
