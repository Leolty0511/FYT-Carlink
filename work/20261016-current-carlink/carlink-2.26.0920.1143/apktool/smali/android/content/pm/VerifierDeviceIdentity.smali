.class public Landroid/content/pm/VerifierDeviceIdentity;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/content/pm/VerifierDeviceIdentity;",
            ">;"
        }
    .end annotation
.end field

.field private static final ENCODE:[C

.field private static final GROUP_SIZE:I = 0x4

.field private static final LONG_SIZE:I = 0xd

.field private static final SEPARATOR:C = '-'


# instance fields
.field private final mIdentity:J

.field private final mIdentityString:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const/16 v0, 0x20

    .line 2
    .line 3
    new-array v0, v0, [C

    .line 4
    .line 5
    fill-array-data v0, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 9
    .line 10
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity$1;

    .line 11
    .line 12
    invoke-direct {v0}, Landroid/content/pm/VerifierDeviceIdentity$1;-><init>()V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroid/content/pm/VerifierDeviceIdentity;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 16
    .line 17
    return-void

    .line 18
    nop

    .line 19
    :array_0
    .array-data 2
        0x41s
        0x42s
        0x43s
        0x44s
        0x45s
        0x46s
        0x47s
        0x48s
        0x49s
        0x4as
        0x4bs
        0x4cs
        0x4ds
        0x4es
        0x4fs
        0x50s
        0x51s
        0x52s
        0x53s
        0x54s
        0x55s
        0x56s
        0x57s
        0x58s
        0x59s
        0x5as
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
    .end array-data
.end method

.method public constructor <init>(J)V
    .locals 0

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    iput-wide p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 4
    invoke-static {p1, p2}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    .line 7
    iput-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 8
    invoke-static {v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;->encodeBase32(J)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/os/Parcel;Landroid/content/pm/VerifierDeviceIdentity$1;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private static final decodeBase32([B)J
    .locals 9

    .line 1
    array-length v0, p0

    .line 2
    const-wide/16 v1, 0x0

    .line 3
    .line 4
    const/4 v3, 0x0

    .line 5
    move v4, v3

    .line 6
    :goto_0
    const/16 v5, 0xd

    .line 7
    .line 8
    if-ge v3, v0, :cond_9

    .line 9
    .line 10
    aget-byte v6, p0, v3

    .line 11
    .line 12
    const/16 v7, 0x41

    .line 13
    .line 14
    if-gt v7, v6, :cond_0

    .line 15
    .line 16
    const/16 v7, 0x5a

    .line 17
    .line 18
    if-gt v6, v7, :cond_0

    .line 19
    .line 20
    add-int/lit8 v6, v6, -0x41

    .line 21
    .line 22
    goto :goto_1

    .line 23
    :cond_0
    const/16 v7, 0x32

    .line 24
    .line 25
    if-gt v7, v6, :cond_1

    .line 26
    .line 27
    const/16 v7, 0x37

    .line 28
    .line 29
    if-gt v6, v7, :cond_1

    .line 30
    .line 31
    add-int/lit8 v6, v6, -0x18

    .line 32
    .line 33
    goto :goto_1

    .line 34
    :cond_1
    const/16 v7, 0x2d

    .line 35
    .line 36
    if-ne v6, v7, :cond_2

    .line 37
    .line 38
    goto :goto_2

    .line 39
    :cond_2
    const/16 v7, 0x61

    .line 40
    .line 41
    if-gt v7, v6, :cond_3

    .line 42
    .line 43
    const/16 v7, 0x7a

    .line 44
    .line 45
    if-gt v6, v7, :cond_3

    .line 46
    .line 47
    add-int/lit8 v6, v6, -0x61

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_3
    const/16 v7, 0x30

    .line 51
    .line 52
    if-ne v6, v7, :cond_4

    .line 53
    .line 54
    const/16 v6, 0xe

    .line 55
    .line 56
    goto :goto_1

    .line 57
    :cond_4
    const/16 v7, 0x31

    .line 58
    .line 59
    if-ne v6, v7, :cond_8

    .line 60
    .line 61
    const/16 v6, 0x8

    .line 62
    .line 63
    :goto_1
    const/4 v7, 0x5

    .line 64
    shl-long/2addr v1, v7

    .line 65
    int-to-long v7, v6

    .line 66
    or-long/2addr v1, v7

    .line 67
    add-int/lit8 v4, v4, 0x1

    .line 68
    .line 69
    const/4 v7, 0x1

    .line 70
    if-ne v4, v7, :cond_6

    .line 71
    .line 72
    and-int/lit8 v5, v6, 0xf

    .line 73
    .line 74
    if-ne v5, v6, :cond_5

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 78
    .line 79
    const-string/jumbo v0, "illegal start character; will overflow"

    .line 80
    .line 81
    .line 82
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    throw p0

    .line 86
    :cond_6
    if-gt v4, v5, :cond_7

    .line 87
    .line 88
    :goto_2
    add-int/lit8 v3, v3, 0x1

    .line 89
    .line 90
    goto :goto_0

    .line 91
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 92
    .line 93
    const-string/jumbo v0, "too long; should have 13 characters"

    .line 94
    .line 95
    .line 96
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    throw p0

    .line 100
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 101
    .line 102
    const-string v0, "base base-32 character: "

    .line 103
    .line 104
    invoke-static {v0, v6}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 105
    .line 106
    .line 107
    move-result-object v0

    .line 108
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 109
    .line 110
    .line 111
    throw p0

    .line 112
    :cond_9
    if-ne v4, v5, :cond_a

    .line 113
    .line 114
    return-wide v1

    .line 115
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 116
    .line 117
    const-string/jumbo v0, "too short; should have 13 characters"

    .line 118
    .line 119
    .line 120
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 121
    .line 122
    .line 123
    throw p0
.end method

.method private static final encodeBase32(J)Ljava/lang/String;
    .locals 6

    .line 1
    sget-object v0, Landroid/content/pm/VerifierDeviceIdentity;->ENCODE:[C

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    new-array v2, v1, [C

    .line 6
    .line 7
    const/4 v3, 0x0

    .line 8
    :goto_0
    const/16 v4, 0xd

    .line 9
    .line 10
    if-ge v3, v4, :cond_1

    .line 11
    .line 12
    if-lez v3, :cond_0

    .line 13
    .line 14
    rem-int/lit8 v4, v3, 0x4

    .line 15
    .line 16
    const/4 v5, 0x1

    .line 17
    if-ne v4, v5, :cond_0

    .line 18
    .line 19
    add-int/lit8 v1, v1, -0x1

    .line 20
    .line 21
    const/16 v4, 0x2d

    .line 22
    .line 23
    aput-char v4, v2, v1

    .line 24
    .line 25
    :cond_0
    const-wide/16 v4, 0x1f

    .line 26
    .line 27
    and-long/2addr v4, p0

    .line 28
    long-to-int v4, v4

    .line 29
    const/4 v5, 0x5

    .line 30
    ushr-long/2addr p0, v5

    .line 31
    add-int/lit8 v1, v1, -0x1

    .line 32
    .line 33
    aget-char v4, v0, v4

    .line 34
    .line 35
    aput-char v4, v2, v1

    .line 36
    .line 37
    add-int/lit8 v3, v3, 0x1

    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    invoke-static {v2}, Ljava/lang/String;->valueOf([C)Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    return-object p0
.end method

.method public static generate()Landroid/content/pm/VerifierDeviceIdentity;
    .locals 1

    .line 1
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 2
    invoke-static {v0}, Landroid/content/pm/VerifierDeviceIdentity;->generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;

    move-result-object v0

    return-object v0
.end method

.method public static generate(Ljava/util/Random;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 2

    .line 3
    invoke-virtual {p0}, Ljava/util/Random;->nextLong()J

    move-result-wide v0

    .line 4
    new-instance p0, Landroid/content/pm/VerifierDeviceIdentity;

    invoke-direct {p0, v0, v1}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    return-object p0
.end method

.method public static parse(Ljava/lang/String;)Landroid/content/pm/VerifierDeviceIdentity;
    .locals 3

    .line 1
    :try_start_0
    const-string v0, "US-ASCII"

    .line 2
    .line 3
    invoke-virtual {p0, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    .line 4
    .line 5
    .line 6
    move-result-object p0
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    .line 7
    new-instance v0, Landroid/content/pm/VerifierDeviceIdentity;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/content/pm/VerifierDeviceIdentity;->decodeBase32([B)J

    .line 10
    .line 11
    .line 12
    move-result-wide v1

    .line 13
    invoke-direct {v0, v1, v2}, Landroid/content/pm/VerifierDeviceIdentity;-><init>(J)V

    .line 14
    .line 15
    .line 16
    return-object v0

    .line 17
    :catch_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 18
    .line 19
    const-string v0, "bad base-32 characters in input"

    .line 20
    .line 21
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw p0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    .line 1
    instance-of v0, p1, Landroid/content/pm/VerifierDeviceIdentity;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p1, Landroid/content/pm/VerifierDeviceIdentity;

    .line 8
    .line 9
    iget-wide v2, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 10
    .line 11
    iget-wide v4, p1, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    .line 12
    .line 13
    cmp-long p1, v2, v4

    .line 14
    .line 15
    if-nez p1, :cond_1

    .line 16
    .line 17
    const/4 v1, 0x1

    .line 18
    :cond_1
    return v1
.end method

.method public hashCode()I
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    long-to-int v0, v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentityString:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    iget-wide v0, p0, Landroid/content/pm/VerifierDeviceIdentity;->mIdentity:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    return-void
.end method
