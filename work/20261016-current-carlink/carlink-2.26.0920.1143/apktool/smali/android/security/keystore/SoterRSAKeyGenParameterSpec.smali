.class public Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
.super Ljava/security/spec/RSAKeyGenParameterSpec;
.source "SourceFile"


# instance fields
.field private isAutoAddCounterWhenGetPublicKey:Z

.field private isAutoSignedWithAttkWhenGetPublicKey:Z

.field private isAutoSignedWithCommonkWhenGetPublicKey:Z

.field private isForSoter:Z

.field private isNeedUseNextAttk:Z

.field private isSecmsgFidCounterSignedWhenSign:Z

.field private mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;


# direct methods
.method public constructor <init>(ILjava/math/BigInteger;ZZZLjava/lang/String;ZZZ)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/security/spec/RSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;)V

    .line 2
    iput-boolean p3, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    .line 3
    iput-boolean p4, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    .line 4
    iput-boolean p5, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    .line 5
    iput-object p6, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    .line 6
    iput-boolean p7, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    .line 7
    iput-boolean p8, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    .line 8
    iput-boolean p9, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    return-void
.end method

.method public constructor <init>(ZZZLjava/lang/String;ZZZ)V
    .locals 10

    const/16 v1, 0x800

    .line 9
    sget-object v2, Ljava/security/spec/RSAKeyGenParameterSpec;->F4:Ljava/math/BigInteger;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    invoke-direct/range {v0 .. v9}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ILjava/math/BigInteger;ZZZLjava/lang/String;ZZZ)V

    return-void
.end method


# virtual methods
.method public getAutoSignedKeyNameWhenGetPublicKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    return-object v0
.end method

.method public isAutoAddCounterWhenGetPublicKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    return v0
.end method

.method public isAutoSignedWithAttkWhenGetPublicKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    return v0
.end method

.method public isAutoSignedWithCommonkWhenGetPublicKey()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    return v0
.end method

.method public isForSoter()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    return v0
.end method

.method public isNeedUseNextAttk()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    return v0
.end method

.method public isSecmsgFidCounterSignedWhenSign()Z
    .locals 1

    iget-boolean v0, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    return v0
.end method

.method public setAutoSignedKeyNameWhenGetPublicKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    return-void
.end method

.method public setIsAutoAddCounterWhenGetPublicKey(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    return-void
.end method

.method public setIsAutoSignedWithAttkWhenGetPublicKey(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    return-void
.end method

.method public setIsAutoSignedWithCommonkWhenGetPublicKey(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    return-void
.end method

.method public setIsForSoter(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    return-void
.end method

.method public setIsNeedUseNextAttk(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    return-void
.end method

.method public setIsSecmsgFidCounterSignedWhenSign(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SoterRSAKeyGenParameterSpec{isForSoter="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isForSoter:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoSignedWithAttkWhenGetPublicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithAttkWhenGetPublicKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoSignedWithCommonkWhenGetPublicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoSignedWithCommonkWhenGetPublicKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", mAutoSignedKeyNameWhenGetPublicKey=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->mAutoSignedKeyNameWhenGetPublicKey:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', isSecmsgFidCounterSignedWhenSign="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isSecmsgFidCounterSignedWhenSign:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isAutoAddCounterWhenGetPublicKey="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isAutoAddCounterWhenGetPublicKey:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", isNeedUseNextAttk="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->isNeedUseNextAttk:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
