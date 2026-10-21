.class public Landroid/security/keystore/AndroidKeyStoreECPrivateKey;
.super Landroid/security/keystore/AndroidKeyStorePrivateKey;
.source "SourceFile"

# interfaces
.implements Ljava/security/interfaces/ECKey;


# instance fields
.field private final mParams:Ljava/security/spec/ECParameterSpec;


# direct methods
.method public constructor <init>(Ljava/lang/String;ILjava/security/spec/ECParameterSpec;)V
    .locals 1

    .line 1
    const-string v0, "EC"

    .line 2
    .line 3
    invoke-direct {p0, p1, p2, v0}, Landroid/security/keystore/AndroidKeyStorePrivateKey;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    .line 4
    .line 5
    .line 6
    iput-object p3, p0, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public getParams()Ljava/security/spec/ECParameterSpec;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/AndroidKeyStoreECPrivateKey;->mParams:Ljava/security/spec/ECParameterSpec;

    return-object v0
.end method
