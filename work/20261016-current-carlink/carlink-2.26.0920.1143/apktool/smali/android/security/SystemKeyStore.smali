.class public Landroid/security/SystemKeyStore;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final KEY_FILE_EXTENSION:Ljava/lang/String; = ".sks"

.field private static final SYSTEM_KEYSTORE_DIRECTORY:Ljava/lang/String; = "misc/systemkeys"

.field private static mInstance:Landroid/security/SystemKeyStore;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/security/SystemKeyStore;

    invoke-direct {v0}, Landroid/security/SystemKeyStore;-><init>()V

    sput-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/security/SystemKeyStore;
    .locals 1

    sget-object v0, Landroid/security/SystemKeyStore;->mInstance:Landroid/security/SystemKeyStore;

    return-object v0
.end method

.method private getKeyFile(Ljava/lang/String;)Ljava/io/File;
    .locals 3

    .line 1
    new-instance v0, Ljava/io/File;

    .line 2
    .line 3
    invoke-static {}, Landroid/os/Environment;->getDataDirectory()Ljava/io/File;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    const-string/jumbo v2, "misc/systemkeys"

    .line 8
    .line 9
    .line 10
    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 11
    .line 12
    .line 13
    new-instance v1, Ljava/io/File;

    .line 14
    .line 15
    const-string v2, ".sks"

    .line 16
    .line 17
    invoke-static {p1, v2}, Landroid/accessibilityservice/c;->D(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v1, v0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    return-object v1
.end method

.method public static toHexString([B)Ljava/lang/String;
    .locals 5

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return-object p0

    .line 5
    :cond_0
    array-length v0, p0

    .line 6
    mul-int/lit8 v0, v0, 0x2

    .line 7
    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 11
    .line 12
    .line 13
    const/4 v0, 0x0

    .line 14
    :goto_0
    array-length v2, p0

    .line 15
    if-ge v0, v2, :cond_2

    .line 16
    .line 17
    aget-byte v2, p0, v0

    .line 18
    .line 19
    and-int/lit16 v2, v2, 0xff

    .line 20
    .line 21
    const/16 v3, 0x10

    .line 22
    .line 23
    invoke-static {v2, v3}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 28
    .line 29
    .line 30
    move-result v3

    .line 31
    const/4 v4, 0x1

    .line 32
    if-ne v3, v4, :cond_1

    .line 33
    .line 34
    const-string v3, "0"

    .line 35
    .line 36
    invoke-virtual {v3, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v2

    .line 40
    :cond_1
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    add-int/lit8 v0, v0, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p0

    .line 50
    return-object p0
.end method


# virtual methods
.method public deleteKey(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-virtual {p1}, Ljava/io/File;->delete()Z

    .line 12
    .line 13
    .line 14
    return-void

    .line 15
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 18
    .line 19
    .line 20
    throw p1
.end method

.method public generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-direct {p0, p3}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p3

    .line 5
    invoke-virtual {p3}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_1

    .line 10
    .line 11
    invoke-static {p2}, Ljavax/crypto/KeyGenerator;->getInstance(Ljava/lang/String;)Ljavax/crypto/KeyGenerator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const-string v0, "SHA1PRNG"

    .line 16
    .line 17
    invoke-static {v0}, Ljava/security/SecureRandom;->getInstance(Ljava/lang/String;)Ljava/security/SecureRandom;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {p2, p1, v0}, Ljavax/crypto/KeyGenerator;->init(ILjava/security/SecureRandom;)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {p2}, Ljavax/crypto/KeyGenerator;->generateKey()Ljavax/crypto/SecretKey;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    invoke-interface {p1}, Ljava/security/Key;->getEncoded()[B

    .line 29
    .line 30
    .line 31
    move-result-object p1

    .line 32
    :try_start_0
    invoke-virtual {p3}, Ljava/io/File;->createNewFile()Z

    .line 33
    .line 34
    .line 35
    move-result p2

    .line 36
    if-eqz p2, :cond_0

    .line 37
    .line 38
    new-instance p2, Ljava/io/FileOutputStream;

    .line 39
    .line 40
    invoke-direct {p2, p3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {p2, p1}, Ljava/io/FileOutputStream;->write([B)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {p2}, Ljava/io/OutputStream;->flush()V

    .line 47
    .line 48
    .line 49
    invoke-static {p2}, Landroid/os/FileUtils;->sync(Ljava/io/FileOutputStream;)Z

    .line 50
    .line 51
    .line 52
    invoke-virtual {p2}, Ljava/io/FileOutputStream;->close()V

    .line 53
    .line 54
    .line 55
    invoke-virtual {p3}, Ljava/io/File;->getName()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object p2

    .line 59
    const/16 p3, 0x180

    .line 60
    .line 61
    const/4 v0, -0x1

    .line 62
    invoke-static {p2, p3, v0, v0}, Landroid/os/FileUtils;->setPermissions(Ljava/lang/String;III)I

    .line 63
    .line 64
    .line 65
    return-object p1

    .line 66
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 67
    .line 68
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 69
    .line 70
    .line 71
    throw p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :catch_0
    const/4 p1, 0x0

    .line 73
    return-object p1

    .line 74
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 75
    .line 76
    invoke-direct {p1}, Ljava/lang/IllegalArgumentException;-><init>()V

    .line 77
    .line 78
    .line 79
    throw p1
.end method

.method public generateNewKeyHexString(ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1, p2, p3}, Landroid/security/SystemKeyStore;->generateNewKey(ILjava/lang/String;Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public retrieveKey(Ljava/lang/String;)[B
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Landroid/security/SystemKeyStore;->getKeyFile(Ljava/lang/String;)Ljava/io/File;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_0

    .line 10
    .line 11
    const/4 p1, 0x0

    .line 12
    return-object p1

    .line 13
    :cond_0
    invoke-virtual {p1}, Ljava/io/File;->toString()Ljava/lang/String;

    .line 14
    .line 15
    .line 16
    move-result-object p1

    .line 17
    invoke-static {p1}, Llibcore/io/IoUtils;->readFileAsByteArray(Ljava/lang/String;)[B

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    return-object p1
.end method

.method public retrieveKeyHexString(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    invoke-virtual {p0, p1}, Landroid/security/SystemKeyStore;->retrieveKey(Ljava/lang/String;)[B

    move-result-object p1

    invoke-static {p1}, Landroid/security/SystemKeyStore;->toHexString([B)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
