.class public abstract Landroid/net/PskKeyManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/android/org/conscrypt/PSKKeyManager;


# static fields
.field public static final MAX_IDENTITY_HINT_LENGTH_BYTES:I = 0x80

.field public static final MAX_IDENTITY_LENGTH_BYTES:I = 0x80

.field public static final MAX_KEY_LENGTH_BYTES:I = 0x100


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public chooseClientKeyIdentity(Ljava/lang/String;Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    const-string p1, ""

    return-object p1
.end method

.method public chooseClientKeyIdentity(Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 2
    const-string p1, ""

    return-object p1
.end method

.method public chooseServerKeyIdentityHint(Ljava/net/Socket;)Ljava/lang/String;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public chooseServerKeyIdentityHint(Ljavax/net/ssl/SSLEngine;)Ljava/lang/String;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljava/net/Socket;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 1
    const/4 p1, 0x0

    return-object p1
.end method

.method public getKey(Ljava/lang/String;Ljava/lang/String;Ljavax/net/ssl/SSLEngine;)Ljavax/crypto/SecretKey;
    .locals 0

    .line 2
    const/4 p1, 0x0

    return-object p1
.end method
