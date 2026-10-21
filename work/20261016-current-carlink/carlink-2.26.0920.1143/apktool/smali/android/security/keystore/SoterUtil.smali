.class public Landroid/security/keystore/SoterUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final JSON_KEY_PUBLIC:Ljava/lang/String; = "pub_key"

.field private static final MAX_EXPORTED_KEY_SIZE:I = 0x800

.field private static final PARAM_NEED_AUTO_ADD_COUNTER_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "addcounter"

.field private static final PARAM_NEED_AUTO_ADD_SECMSG_FID_COUNTER_WHEN_SIGN:Ljava/lang/String; = "secmsg_and_counter_signed_when_sign"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_ATTK_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey_attk"

.field private static final PARAM_NEED_AUTO_SIGNED_WITH_COMMON_KEY_WHEN_GET_PUBLIC_KEY:Ljava/lang/String; = "auto_signed_when_get_pubkey"

.field private static final PARAM_NEED_NEXT_ATTK:Ljava/lang/String; = "next_attk"

.field private static final RAW_LENGTH_PREFIX:I = 0x4

.field public static final TAG:Ljava/lang/String; = "Soter.Util"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static contains(Ljava/lang/String;[Ljava/lang/String;)Z
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    move v2, v1

    .line 15
    :goto_0
    if-ge v2, v0, :cond_1

    .line 16
    .line 17
    aget-object v3, p1, v2

    .line 18
    .line 19
    invoke-virtual {p0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 20
    .line 21
    .line 22
    move-result v3

    .line 23
    if-eqz v3, :cond_0

    .line 24
    .line 25
    const/4 p0, 0x1

    .line 26
    return p0

    .line 27
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_1
    return v1

    .line 31
    :cond_2
    const-string p0, "Soter.Util"

    .line 32
    .line 33
    const-string/jumbo p1, "hy: param error"

    .line 34
    .line 35
    .line 36
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 40
    .line 41
    const-string/jumbo p1, "param error"

    .line 42
    .line 43
    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0
.end method

.method private static containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    array-length v0, p1

    .line 4
    if-eqz v0, :cond_2

    .line 5
    .line 6
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-nez v0, :cond_2

    .line 11
    .line 12
    array-length v0, p1

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_1

    .line 15
    .line 16
    aget-object v2, p1, v1

    .line 17
    .line 18
    invoke-static {v2}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-nez v3, :cond_0

    .line 23
    .line 24
    invoke-virtual {v2, p0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 25
    .line 26
    .line 27
    move-result v3

    .line 28
    if-eqz v3, :cond_0

    .line 29
    .line 30
    return-object v2

    .line 31
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const/4 p0, 0x0

    .line 35
    return-object p0

    .line 36
    :cond_2
    const-string p0, "Soter.Util"

    .line 37
    .line 38
    const-string/jumbo p1, "hy: param error"

    .line 39
    .line 40
    .line 41
    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 45
    .line 46
    const-string/jumbo p1, "param error"

    .line 47
    .line 48
    .line 49
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 50
    .line 51
    .line 52
    throw p0
.end method

.method public static convertKeyNameToParameterSpec(Ljava/lang/String;)Landroid/security/keystore/SoterRSAKeyGenParameterSpec;
    .locals 12

    .line 1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Soter.Util"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "hy: null or nil when convert key name to parameter"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    const-string v0, "\\."

    .line 18
    .line 19
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p0

    .line 23
    if-eqz p0, :cond_6

    .line 24
    .line 25
    array-length v0, p0

    .line 26
    const/4 v3, 0x1

    .line 27
    if-gt v0, v3, :cond_1

    .line 28
    .line 29
    goto/16 :goto_4

    .line 30
    .line 31
    :cond_1
    const/4 v5, 0x1

    .line 32
    const-string v0, "auto_signed_when_get_pubkey_attk"

    .line 33
    .line 34
    invoke-static {v0, p0}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    const/4 v1, 0x0

    .line 39
    const-string v4, ""

    .line 40
    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    move v7, v1

    .line 44
    move v6, v3

    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const-string v0, "auto_signed_when_get_pubkey"

    .line 47
    .line 48
    invoke-static {v0, p0}, Landroid/security/keystore/SoterUtil;->containsPrefix(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 53
    .line 54
    .line 55
    move-result v6

    .line 56
    if-nez v6, :cond_3

    .line 57
    .line 58
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;

    .line 59
    .line 60
    .line 61
    move-result-object v0

    .line 62
    invoke-static {v0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v6

    .line 66
    if-nez v6, :cond_3

    .line 67
    .line 68
    move-object v8, v0

    .line 69
    move v6, v1

    .line 70
    move v7, v3

    .line 71
    goto :goto_1

    .line 72
    :cond_3
    move v6, v1

    .line 73
    move v7, v6

    .line 74
    :goto_0
    move-object v8, v4

    .line 75
    :goto_1
    const-string/jumbo v0, "secmsg_and_counter_signed_when_sign"

    .line 76
    .line 77
    .line 78
    invoke-static {v0, p0}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 79
    .line 80
    .line 81
    move-result v9

    .line 82
    const-string v0, "addcounter"

    .line 83
    .line 84
    invoke-static {v0, p0}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_5

    .line 89
    .line 90
    const-string/jumbo v0, "next_attk"

    .line 91
    .line 92
    .line 93
    invoke-static {v0, p0}, Landroid/security/keystore/SoterUtil;->contains(Ljava/lang/String;[Ljava/lang/String;)Z

    .line 94
    .line 95
    .line 96
    move-result p0

    .line 97
    if-eqz p0, :cond_4

    .line 98
    .line 99
    move v10, v3

    .line 100
    goto :goto_2

    .line 101
    :cond_4
    move v11, v1

    .line 102
    move v10, v3

    .line 103
    goto :goto_3

    .line 104
    :cond_5
    move v10, v1

    .line 105
    :goto_2
    move v11, v10

    .line 106
    :goto_3
    new-instance p0, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;

    .line 107
    .line 108
    move-object v4, p0

    .line 109
    invoke-direct/range {v4 .. v11}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;-><init>(ZZZLjava/lang/String;ZZZ)V

    .line 110
    .line 111
    .line 112
    new-instance v0, Ljava/lang/StringBuilder;

    .line 113
    .line 114
    const-string/jumbo v1, "hy: spec: "

    .line 115
    .line 116
    .line 117
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    invoke-virtual {p0}, Landroid/security/keystore/SoterRSAKeyGenParameterSpec;->toString()Ljava/lang/String;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 128
    .line 129
    .line 130
    move-result-object v0

    .line 131
    invoke-static {v2, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 132
    .line 133
    .line 134
    return-object p0

    .line 135
    :cond_6
    :goto_4
    const-string/jumbo p0, "hy: pure alias, no parameter"

    .line 136
    .line 137
    .line 138
    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 139
    .line 140
    .line 141
    return-object v1
.end method

.method public static getDataFromRaw([BLjava/lang/String;)[B
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Soter"

    .line 7
    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const-string/jumbo p0, "hy: json keyname error"

    .line 11
    .line 12
    .line 13
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    .line 15
    .line 16
    return-object v1

    .line 17
    :cond_0
    if-nez p0, :cond_1

    .line 18
    .line 19
    const-string/jumbo p0, "hy: json origin null"

    .line 20
    .line 21
    .line 22
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 23
    .line 24
    .line 25
    return-object v1

    .line 26
    :cond_1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->retriveJsonFromExportedData([B)Lorg/json/JSONObject;

    .line 27
    .line 28
    .line 29
    move-result-object p0

    .line 30
    if-eqz p0, :cond_2

    .line 31
    .line 32
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 33
    .line 34
    .line 35
    move-result v0

    .line 36
    if-eqz v0, :cond_2

    .line 37
    .line 38
    invoke-virtual {p0, p1}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    move-result-object p0

    .line 42
    new-instance p1, Ljava/lang/StringBuilder;

    .line 43
    .line 44
    const-string v0, "base64 encoded public key: "

    .line 45
    .line 46
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 50
    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    const-string p1, "-----BEGIN PUBLIC KEY-----"

    .line 60
    .line 61
    const-string v0, ""

    .line 62
    .line 63
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p0

    .line 67
    const-string p1, "-----END PUBLIC KEY-----"

    .line 68
    .line 69
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object p0

    .line 73
    const-string p1, "\\n"

    .line 74
    .line 75
    invoke-virtual {p0, p1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object p0

    .line 79
    new-instance p1, Ljava/lang/StringBuilder;

    .line 80
    .line 81
    const-string/jumbo v0, "pure base64 encoded public key: "

    .line 82
    .line 83
    .line 84
    invoke-direct {p1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 88
    .line 89
    .line 90
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p1

    .line 94
    invoke-static {v2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    .line 96
    .line 97
    const/4 p1, 0x0

    .line 98
    invoke-static {p0, p1}, Landroid/util/Base64;->decode(Ljava/lang/String;I)[B

    .line 99
    .line 100
    .line 101
    move-result-object p0

    .line 102
    return-object p0

    .line 103
    :cond_2
    return-object v1
.end method

.method public static getPureKeyAliasFromKeyName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string/jumbo v1, "hy: retrieving pure name from: "

    .line 4
    .line 5
    .line 6
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    .line 11
    .line 12
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    const-string v1, "Soter.Util"

    .line 17
    .line 18
    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    const-string/jumbo p0, "hy: null or nil when get pure key alias"

    .line 28
    .line 29
    .line 30
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    const/4 p0, 0x0

    .line 34
    return-object p0

    .line 35
    :cond_0
    const-string v0, "\\."

    .line 36
    .line 37
    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    if-eqz v0, :cond_2

    .line 42
    .line 43
    array-length v2, v0

    .line 44
    const/4 v3, 0x1

    .line 45
    if-gt v2, v3, :cond_1

    .line 46
    .line 47
    goto :goto_0

    .line 48
    :cond_1
    const/4 p0, 0x0

    .line 49
    aget-object p0, v0, p0

    .line 50
    .line 51
    return-object p0

    .line 52
    :cond_2
    :goto_0
    const-string/jumbo v0, "hy: pure alias"

    .line 53
    .line 54
    .line 55
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    .line 57
    .line 58
    return-object p0
.end method

.method public static isNullOrNil(Ljava/lang/String;)Z
    .locals 1

    .line 1
    if-eqz p0, :cond_1

    .line 2
    .line 3
    const-string v0, ""

    .line 4
    .line 5
    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 6
    .line 7
    .line 8
    move-result p0

    .line 9
    if-eqz p0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    const/4 p0, 0x0

    .line 13
    goto :goto_1

    .line 14
    :cond_1
    :goto_0
    const/4 p0, 0x1

    .line 15
    :goto_1
    return p0
.end method

.method private static retrieveKeyNameFromExpr(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 1
    invoke-static {p0}, Landroid/security/keystore/SoterUtil;->isNullOrNil(Ljava/lang/String;)Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    const-string v2, "Soter.Util"

    .line 7
    .line 8
    if-nez v0, :cond_1

    .line 9
    .line 10
    const-string v0, "("

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 13
    .line 14
    .line 15
    move-result v0

    .line 16
    const-string v3, ")"

    .line 17
    .line 18
    invoke-virtual {p0, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result v3

    .line 22
    if-ltz v0, :cond_0

    .line 23
    .line 24
    if-le v3, v0, :cond_0

    .line 25
    .line 26
    add-int/lit8 v0, v0, 0x1

    .line 27
    .line 28
    invoke-virtual {p0, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 29
    .line 30
    .line 31
    move-result-object p0

    .line 32
    return-object p0

    .line 33
    :cond_0
    const-string/jumbo p0, "hy: no key name"

    .line 34
    .line 35
    .line 36
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v1

    .line 40
    :cond_1
    const-string/jumbo p0, "hy: expr is null"

    .line 41
    .line 42
    .line 43
    invoke-static {v2, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 44
    .line 45
    .line 46
    return-object v1
.end method

.method private static retriveJsonFromExportedData([B)Lorg/json/JSONObject;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    const-string v1, "Soter"

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    const-string/jumbo p0, "raw data is null"

    .line 7
    .line 8
    .line 9
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    return-object v0

    .line 13
    :cond_0
    array-length v2, p0

    .line 14
    const/4 v3, 0x4

    .line 15
    if-ge v2, v3, :cond_1

    .line 16
    .line 17
    const-string/jumbo v2, "raw data length smaller than 4"

    .line 18
    .line 19
    .line 20
    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    .line 22
    .line 23
    :cond_1
    new-array v2, v3, [B

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p0, v4, v2, v4, v3}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 27
    .line 28
    .line 29
    invoke-static {v2}, Landroid/security/keystore/SoterUtil;->toInt([B)I

    .line 30
    .line 31
    .line 32
    move-result v2

    .line 33
    new-instance v5, Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const-string/jumbo v6, "parsed raw length: "

    .line 36
    .line 37
    .line 38
    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v5

    .line 48
    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 49
    .line 50
    .line 51
    const/16 v5, 0x800

    .line 52
    .line 53
    if-le v2, v5, :cond_2

    .line 54
    .line 55
    return-object v0

    .line 56
    :cond_2
    new-array v5, v2, [B

    .line 57
    .line 58
    array-length v6, p0

    .line 59
    add-int/lit8 v7, v2, 0x4

    .line 60
    .line 61
    if-gt v6, v7, :cond_3

    .line 62
    .line 63
    const-string/jumbo p0, "length not correct 2"

    .line 64
    .line 65
    .line 66
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 67
    .line 68
    .line 69
    return-object v0

    .line 70
    :cond_3
    invoke-static {p0, v3, v5, v4, v2}, Ljava/lang/System;->arraycopy([BI[BII)V

    .line 71
    .line 72
    .line 73
    new-instance p0, Ljava/lang/String;

    .line 74
    .line 75
    invoke-direct {p0, v5}, Ljava/lang/String;-><init>([B)V

    .line 76
    .line 77
    .line 78
    const-string/jumbo v2, "to convert json: "

    .line 79
    .line 80
    .line 81
    invoke-virtual {v2, p0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 82
    .line 83
    .line 84
    move-result-object v2

    .line 85
    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    .line 87
    .line 88
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    .line 89
    .line 90
    invoke-direct {v2, p0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 91
    .line 92
    .line 93
    return-object v2

    .line 94
    :catch_0
    const-string/jumbo p0, "hy: can not convert to json"

    .line 95
    .line 96
    .line 97
    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 98
    .line 99
    .line 100
    return-object v0
.end method

.method public static toInt([B)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    array-length v2, p0

    .line 4
    if-ge v0, v2, :cond_0

    .line 5
    .line 6
    aget-byte v2, p0, v0

    .line 7
    .line 8
    and-int/lit16 v2, v2, 0xff

    .line 9
    .line 10
    mul-int/lit8 v3, v0, 0x8

    .line 11
    .line 12
    shl-int/2addr v2, v3

    .line 13
    add-int/2addr v1, v2

    .line 14
    add-int/lit8 v0, v0, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_0
    return v1
.end method
