.class public Landroid/security/AndroidKeyStoreProvider;
.super Ljava/security/Provider;
.source "SourceFile"


# static fields
.field public static final PROVIDER_NAME:Ljava/lang/String; = "AndroidKeyStore"


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "AndroidKeyStore"

    const-wide/high16 v1, 0x3ff0000000000000L    # 1.0

    const-string v3, "Android KeyStore security provider"

    .line 1
    invoke-direct {p0, v0, v1, v2, v3}, Ljava/security/Provider;-><init>(Ljava/lang/String;DLjava/lang/String;)V

    .line 2
    const-class v0, Landroid/security/AndroidKeyStore;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyStore.AndroidKeyStore"

    invoke-virtual {p0, v1, v0}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    const-class v0, Landroid/security/AndroidKeyPairGenerator;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "KeyPairGenerator.RSA"

    invoke-virtual {p0, v1, v0}, Ljava/security/Provider;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
