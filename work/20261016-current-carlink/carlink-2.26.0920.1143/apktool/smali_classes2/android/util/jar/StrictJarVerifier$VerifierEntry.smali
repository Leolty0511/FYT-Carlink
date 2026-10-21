.class Landroid/util/jar/StrictJarVerifier$VerifierEntry;
.super Ljava/io/OutputStream;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/util/jar/StrictJarVerifier;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VerifierEntry"
.end annotation


# instance fields
.field private final certChains:[[Ljava/security/cert/Certificate;

.field private final digest:Ljava/security/MessageDigest;

.field private final hash:[B

.field private final name:Ljava/lang/String;

.field private final verifiedEntries:Ljava/util/Hashtable;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/security/MessageDigest;[B[[Ljava/security/cert/Certificate;Ljava/util/Hashtable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/security/MessageDigest;",
            "[B[[",
            "Ljava/security/cert/Certificate;",
            "Ljava/util/Hashtable<",
            "Ljava/lang/String;",
            "[[",
            "Ljava/security/cert/Certificate;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/io/OutputStream;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 5
    .line 6
    iput-object p2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    .line 9
    .line 10
    iput-object p4, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    .line 11
    .line 12
    iput-object p5, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public verify()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/security/MessageDigest;->digest()[B

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->hash:[B

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/jar/StrictJarVerifier;->access$000([B[B)Z

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->verifiedEntries:Ljava/util/Hashtable;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->certChains:[[Ljava/security/cert/Certificate;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    return-void

    .line 25
    :cond_0
    const-string v0, "META-INF/MANIFEST.MF"

    .line 26
    .line 27
    iget-object v1, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->name:Ljava/lang/String;

    .line 28
    .line 29
    invoke-static {v0, v1, v1}, Landroid/util/jar/StrictJarVerifier;->access$100(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/SecurityException;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    throw v0
.end method

.method public write(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    int-to-byte p1, p1

    invoke-virtual {v0, p1}, Ljava/security/MessageDigest;->update(B)V

    return-void
.end method

.method public write([BII)V
    .locals 1

    .line 2
    iget-object v0, p0, Landroid/util/jar/StrictJarVerifier$VerifierEntry;->digest:Ljava/security/MessageDigest;

    invoke-virtual {v0, p1, p2, p3}, Ljava/security/MessageDigest;->update([BII)V

    return-void
.end method
