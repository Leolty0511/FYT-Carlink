.class Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/security/keystore/KeyStoreCryptoOperationChunkedStreamer$Stream;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdditionalAuthenticationDataStream"
.end annotation


# instance fields
.field private final mKeyStore:Landroid/security/KeyStore;

.field private final mOperationToken:Landroid/os/IBinder;


# direct methods
.method private constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-object p1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 4
    iput-object p2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/security/KeyStore;Landroid/os/IBinder;Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;-><init>(Landroid/security/KeyStore;Landroid/os/IBinder;)V

    return-void
.end method


# virtual methods
.method public finish([B[B)Landroid/security/keymaster/OperationResult;
    .locals 8

    .line 1
    if-eqz p2, :cond_1

    .line 2
    .line 3
    array-length p1, p2

    .line 4
    if-gtz p1, :cond_0

    .line 5
    .line 6
    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Ljava/security/ProviderException;

    .line 8
    .line 9
    const-string p2, "AAD stream does not support additional entropy"

    .line 10
    .line 11
    invoke-direct {p1, p2}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p1

    .line 15
    :cond_1
    :goto_0
    new-instance p1, Landroid/security/keymaster/OperationResult;

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    .line 19
    .line 20
    const-wide/16 v3, 0x0

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    sget-object v6, Llibcore/util/EmptyArray;->BYTE:[B

    .line 24
    .line 25
    new-instance v7, Landroid/security/keymaster/KeymasterArguments;

    .line 26
    .line 27
    invoke-direct {v7}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 28
    .line 29
    .line 30
    move-object v0, p1

    .line 31
    invoke-direct/range {v0 .. v7}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    .line 32
    .line 33
    .line 34
    return-object p1
.end method

.method public update([B)Landroid/security/keymaster/OperationResult;
    .locals 11

    .line 1
    new-instance v0, Landroid/security/keymaster/KeymasterArguments;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/security/keymaster/KeymasterArguments;-><init>()V

    .line 4
    .line 5
    .line 6
    const v1, -0x6ffffc18

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addBytes(I[B)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mKeyStore:Landroid/security/KeyStore;

    .line 13
    .line 14
    iget-object v2, p0, Landroid/security/keystore/AndroidKeyStoreAuthenticatedAESCipherSpi$AdditionalAuthenticationDataStream;->mOperationToken:Landroid/os/IBinder;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-virtual {v1, v2, v0, v3}, Landroid/security/KeyStore;->update(Landroid/os/IBinder;Landroid/security/keymaster/KeymasterArguments;[B)Landroid/security/keymaster/OperationResult;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    iget v1, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 22
    .line 23
    const/4 v2, 0x1

    .line 24
    if-ne v1, v2, :cond_0

    .line 25
    .line 26
    new-instance v1, Landroid/security/keymaster/OperationResult;

    .line 27
    .line 28
    iget v4, v0, Landroid/security/keymaster/OperationResult;->resultCode:I

    .line 29
    .line 30
    iget-object v5, v0, Landroid/security/keymaster/OperationResult;->token:Landroid/os/IBinder;

    .line 31
    .line 32
    iget-wide v6, v0, Landroid/security/keymaster/OperationResult;->operationHandle:J

    .line 33
    .line 34
    array-length v8, p1

    .line 35
    iget-object v9, v0, Landroid/security/keymaster/OperationResult;->output:[B

    .line 36
    .line 37
    iget-object v10, v0, Landroid/security/keymaster/OperationResult;->outParams:Landroid/security/keymaster/KeymasterArguments;

    .line 38
    .line 39
    move-object v3, v1

    .line 40
    invoke-direct/range {v3 .. v10}, Landroid/security/keymaster/OperationResult;-><init>(ILandroid/os/IBinder;JI[BLandroid/security/keymaster/KeymasterArguments;)V

    .line 41
    .line 42
    .line 43
    move-object v0, v1

    .line 44
    :cond_0
    return-object v0
.end method
