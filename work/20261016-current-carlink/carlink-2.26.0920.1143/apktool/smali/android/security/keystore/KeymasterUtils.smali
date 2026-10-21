.class public abstract Landroid/security/keystore/KeymasterUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addMinMacLengthAuthorizationIfNecessary(Landroid/security/keymaster/KeymasterArguments;I[I[I)V
    .locals 2

    .line 1
    const v0, 0x30000008

    .line 2
    .line 3
    .line 4
    const/16 v1, 0x20

    .line 5
    .line 6
    if-eq p1, v1, :cond_3

    .line 7
    .line 8
    const/16 p2, 0x80

    .line 9
    .line 10
    if-eq p1, p2, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    array-length p1, p3

    .line 14
    const/4 p2, 0x1

    .line 15
    if-ne p1, p2, :cond_2

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    aget p1, p3, p1

    .line 19
    .line 20
    invoke-static {p1}, Landroid/security/keystore/KeymasterUtils;->getDigestOutputSizeBits(I)I

    .line 21
    .line 22
    .line 23
    move-result p2

    .line 24
    const/4 p3, -0x1

    .line 25
    if-eq p2, p3, :cond_1

    .line 26
    .line 27
    int-to-long p1, p2

    .line 28
    invoke-virtual {p0, v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 29
    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    new-instance p0, Ljava/security/ProviderException;

    .line 33
    .line 34
    new-instance p2, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string p3, "HMAC key authorized for unsupported digest: "

    .line 37
    .line 38
    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-static {p1}, Landroid/security/keystore/KeyProperties$Digest;->fromKeymaster(I)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object p1

    .line 45
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :cond_2
    new-instance p0, Ljava/security/ProviderException;

    .line 57
    .line 58
    new-instance p1, Ljava/lang/StringBuilder;

    .line 59
    .line 60
    const-string p2, "Unsupported number of authorized digests for HMAC key: "

    .line 61
    .line 62
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 63
    .line 64
    .line 65
    array-length p2, p3

    .line 66
    const-string p3, ". Exactly one digest must be authorized"

    .line 67
    .line 68
    invoke-static {p1, p2, p3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    throw p0

    .line 76
    :cond_3
    invoke-static {p2, v1}, Lcom/android/internal/util/ArrayUtils;->contains([II)Z

    .line 77
    .line 78
    .line 79
    move-result p1

    .line 80
    if-eqz p1, :cond_4

    .line 81
    .line 82
    const-wide/16 p1, 0x60

    .line 83
    .line 84
    invoke-virtual {p0, v0, p1, p2}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 85
    .line 86
    .line 87
    :cond_4
    :goto_0
    return-void
.end method

.method public static addUserAuthArgs(Landroid/security/keymaster/KeymasterArguments;ZIZZJ)V
    .locals 5

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const p1, 0x700001f7

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 7
    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 p1, -0x1

    .line 11
    const v0, 0x100001f8

    .line 12
    .line 13
    .line 14
    const v1, -0x5ffffe0a

    .line 15
    .line 16
    .line 17
    const-wide/16 v2, 0x0

    .line 18
    .line 19
    if-ne p2, p1, :cond_6

    .line 20
    .line 21
    invoke-static {}, Landroid/security/KeyStore;->getApplicationContext()Landroid/content/Context;

    .line 22
    .line 23
    .line 24
    move-result-object p1

    .line 25
    const-class p2, Landroid/hardware/fingerprint/FingerprintManager;

    .line 26
    .line 27
    invoke-virtual {p1, p2}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    check-cast p1, Landroid/hardware/fingerprint/FingerprintManager;

    .line 32
    .line 33
    if-eqz p1, :cond_1

    .line 34
    .line 35
    invoke-virtual {p1}, Landroid/hardware/fingerprint/FingerprintManager;->getAuthenticatorId()J

    .line 36
    .line 37
    .line 38
    move-result-wide p1

    .line 39
    goto :goto_0

    .line 40
    :cond_1
    move-wide p1, v2

    .line 41
    :goto_0
    cmp-long v4, p1, v2

    .line 42
    .line 43
    if-eqz v4, :cond_5

    .line 44
    .line 45
    cmp-long v2, p5, v2

    .line 46
    .line 47
    if-eqz v2, :cond_2

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    if-eqz p4, :cond_3

    .line 51
    .line 52
    move-wide p5, p1

    .line 53
    goto :goto_1

    .line 54
    :cond_3
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    .line 55
    .line 56
    .line 57
    move-result-wide p5

    .line 58
    :goto_1
    invoke-static {p5, p6}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    .line 59
    .line 60
    .line 61
    move-result-object p1

    .line 62
    invoke-virtual {p0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 63
    .line 64
    .line 65
    const/4 p1, 0x2

    .line 66
    invoke-virtual {p0, v0, p1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 67
    .line 68
    .line 69
    if-nez p3, :cond_4

    .line 70
    .line 71
    goto :goto_3

    .line 72
    :cond_4
    new-instance p0, Ljava/security/ProviderException;

    .line 73
    .line 74
    const-string p1, "Key validity extension while device is on-body is not supported for keys requiring fingerprint authentication"

    .line 75
    .line 76
    invoke-direct {p0, p1}, Ljava/security/ProviderException;-><init>(Ljava/lang/String;)V

    .line 77
    .line 78
    .line 79
    throw p0

    .line 80
    :cond_5
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 81
    .line 82
    const-string p1, "At least one fingerprint must be enrolled to create keys requiring user authentication for every use"

    .line 83
    .line 84
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    throw p0

    .line 88
    :cond_6
    cmp-long p1, p5, v2

    .line 89
    .line 90
    if-eqz p1, :cond_7

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_7
    invoke-static {}, Landroid/security/keystore/KeymasterUtils;->getRootSid()J

    .line 94
    .line 95
    .line 96
    move-result-wide p5

    .line 97
    :goto_2
    invoke-static {p5, p6}, Landroid/security/keymaster/KeymasterArguments;->toUint64(J)Ljava/math/BigInteger;

    .line 98
    .line 99
    .line 100
    move-result-object p1

    .line 101
    invoke-virtual {p0, v1, p1}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedLong(ILjava/math/BigInteger;)V

    .line 102
    .line 103
    .line 104
    const/4 p1, 0x3

    .line 105
    invoke-virtual {p0, v0, p1}, Landroid/security/keymaster/KeymasterArguments;->addEnum(II)V

    .line 106
    .line 107
    .line 108
    const p1, 0x300001f9

    .line 109
    .line 110
    .line 111
    int-to-long p4, p2

    .line 112
    invoke-virtual {p0, p1, p4, p5}, Landroid/security/keymaster/KeymasterArguments;->addUnsignedInt(IJ)V

    .line 113
    .line 114
    .line 115
    if-eqz p3, :cond_8

    .line 116
    .line 117
    const p1, 0x700001fa

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0, p1}, Landroid/security/keymaster/KeymasterArguments;->addBoolean(I)V

    .line 121
    .line 122
    .line 123
    :cond_8
    :goto_3
    return-void
.end method

.method public static getDigestOutputSizeBits(I)I
    .locals 2

    .line 1
    packed-switch p0, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 5
    .line 6
    const-string v1, "Unknown digest: "

    .line 7
    .line 8
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    throw v0

    .line 16
    :pswitch_0
    const/16 p0, 0x200

    .line 17
    .line 18
    return p0

    .line 19
    :pswitch_1
    const/16 p0, 0x180

    .line 20
    .line 21
    return p0

    .line 22
    :pswitch_2
    const/16 p0, 0x100

    .line 23
    .line 24
    return p0

    .line 25
    :pswitch_3
    const/16 p0, 0xe0

    .line 26
    .line 27
    return p0

    .line 28
    :pswitch_4
    const/16 p0, 0xa0

    .line 29
    .line 30
    return p0

    .line 31
    :pswitch_5
    const/16 p0, 0x80

    .line 32
    .line 33
    return p0

    .line 34
    :pswitch_6
    const/4 p0, -0x1

    .line 35
    return p0

    .line 36
    nop

    .line 37
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static getRootSid()J
    .locals 4

    .line 1
    invoke-static {}, Landroid/security/GateKeeper;->getSecureUserId()J

    .line 2
    .line 3
    .line 4
    move-result-wide v0

    .line 5
    const-wide/16 v2, 0x0

    .line 6
    .line 7
    cmp-long v2, v0, v2

    .line 8
    .line 9
    if-eqz v2, :cond_0

    .line 10
    .line 11
    return-wide v0

    .line 12
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 13
    .line 14
    const-string v1, "Secure lock screen must be enabled to create keys requiring user authentication"

    .line 15
    .line 16
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0
.end method

.method public static isKeymasterBlockModeIndCpaCompatibleWithSymmetricCrypto(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p0, v1, :cond_1

    .line 9
    .line 10
    const/16 v1, 0x20

    .line 11
    .line 12
    if-ne p0, v1, :cond_0

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 16
    .line 17
    const-string v1, "Unsupported block mode: "

    .line 18
    .line 19
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw v0

    .line 27
    :cond_1
    :goto_0
    return v0

    .line 28
    :cond_2
    const/4 p0, 0x0

    .line 29
    return p0
.end method

.method public static isKeymasterPaddingSchemeIndCpaCompatibleWithAsymmetricCrypto(I)Z
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_1

    .line 6
    .line 7
    const/4 v1, 0x4

    .line 8
    if-ne p0, v1, :cond_0

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 12
    .line 13
    const-string v1, "Unsupported asymmetric encryption padding scheme: "

    .line 14
    .line 15
    invoke-static {v1, p0}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 20
    .line 21
    .line 22
    throw v0

    .line 23
    :cond_1
    :goto_0
    return v0

    .line 24
    :cond_2
    const/4 p0, 0x0

    .line 25
    return p0
.end method
