.class Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/security/KeyStore$LoadStoreParameter;


# instance fields
.field private final mUid:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput p1, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public getProtectionParameter()Ljava/security/KeyStore$ProtectionParameter;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getUid()I
    .locals 1

    iget v0, p0, Landroid/security/keystore/AndroidKeyStoreLoadStoreParameter;->mUid:I

    return v0
.end method
