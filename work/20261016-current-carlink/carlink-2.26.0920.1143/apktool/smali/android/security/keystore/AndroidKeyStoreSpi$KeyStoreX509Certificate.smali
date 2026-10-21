.class Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;
.super Landroid/security/keystore/DelegatingX509Certificate;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "KeyStoreX509Certificate"
.end annotation


# instance fields
.field private final mPrivateKeyAlias:Ljava/lang/String;

.field private final mPrivateKeyUid:I


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/cert/X509Certificate;)V
    .locals 0

    .line 1
    invoke-direct {p0, p3}, Landroid/security/keystore/DelegatingX509Certificate;-><init>(Ljava/security/cert/X509Certificate;)V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyUid:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getPublicKey()Ljava/security/PublicKey;
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/security/keystore/DelegatingX509Certificate;->getPublicKey()Ljava/security/PublicKey;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyAlias:Ljava/lang/String;

    .line 6
    .line 7
    iget v2, p0, Landroid/security/keystore/AndroidKeyStoreSpi$KeyStoreX509Certificate;->mPrivateKeyUid:I

    .line 8
    .line 9
    invoke-interface {v0}, Ljava/security/Key;->getAlgorithm()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-interface {v0}, Ljava/security/Key;->getEncoded()[B

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-static {v1, v2, v3, v0}, Landroid/security/keystore/AndroidKeyStoreProvider;->getAndroidKeyStorePublicKey(Ljava/lang/String;ILjava/lang/String;[B)Landroid/security/keystore/AndroidKeyStorePublicKey;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    return-object v0
.end method
