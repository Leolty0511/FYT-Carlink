.class public final Landroid/media/MediaCodec$CryptoInfo;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodec;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CryptoInfo"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/MediaCodec$CryptoInfo$Pattern;
    }
.end annotation


# instance fields
.field public iv:[B

.field public key:[B

.field public mode:I

.field public numBytesOfClearData:[I

.field public numBytesOfEncryptedData:[I

.field public numSubSamples:I

.field private pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

.field private final zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, v1, v1}, Landroid/media/MediaCodec$CryptoInfo$Pattern;-><init>(II)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/media/MediaCodec$CryptoInfo;->zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public set(I[I[I[B[BI)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 2
    .line 3
    iput-object p2, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 4
    .line 5
    iput-object p3, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 6
    .line 7
    iput-object p4, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 8
    .line 9
    iput-object p5, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 10
    .line 11
    iput p6, p0, Landroid/media/MediaCodec$CryptoInfo;->mode:I

    .line 12
    .line 13
    iget-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->zeroPattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 14
    .line 15
    iput-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    .line 16
    .line 17
    return-void
.end method

.method public setPattern(Landroid/media/MediaCodec$CryptoInfo$Pattern;)V
    .locals 0

    iput-object p1, p0, Landroid/media/MediaCodec$CryptoInfo;->pattern:Landroid/media/MediaCodec$CryptoInfo$Pattern;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/lang/StringBuilder;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    .line 10
    .line 11
    iget v2, p0, Landroid/media/MediaCodec$CryptoInfo;->numSubSamples:I

    .line 12
    .line 13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    const-string v2, " subsamples, key ["

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x0

    .line 29
    move v2, v1

    .line 30
    :goto_0
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 31
    .line 32
    array-length v4, v3

    .line 33
    const-string v5, "0123456789abcdef"

    .line 34
    .line 35
    if-ge v2, v4, :cond_0

    .line 36
    .line 37
    aget-byte v3, v3, v2

    .line 38
    .line 39
    and-int/lit16 v3, v3, 0xf0

    .line 40
    .line 41
    shr-int/lit8 v3, v3, 0x4

    .line 42
    .line 43
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 44
    .line 45
    .line 46
    move-result v3

    .line 47
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 48
    .line 49
    .line 50
    iget-object v3, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 51
    .line 52
    aget-byte v3, v3, v2

    .line 53
    .line 54
    and-int/lit8 v3, v3, 0xf

    .line 55
    .line 56
    invoke-virtual {v5, v3}, Ljava/lang/String;->charAt(I)C

    .line 57
    .line 58
    .line 59
    move-result v3

    .line 60
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 61
    .line 62
    .line 63
    add-int/lit8 v2, v2, 0x1

    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const-string v2, "], iv ["

    .line 67
    .line 68
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 69
    .line 70
    .line 71
    :goto_1
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->key:[B

    .line 72
    .line 73
    array-length v2, v2

    .line 74
    if-ge v1, v2, :cond_1

    .line 75
    .line 76
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 77
    .line 78
    aget-byte v2, v2, v1

    .line 79
    .line 80
    and-int/lit16 v2, v2, 0xf0

    .line 81
    .line 82
    shr-int/lit8 v2, v2, 0x4

    .line 83
    .line 84
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 85
    .line 86
    .line 87
    move-result v2

    .line 88
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Landroid/media/MediaCodec$CryptoInfo;->iv:[B

    .line 92
    .line 93
    aget-byte v2, v2, v1

    .line 94
    .line 95
    and-int/lit8 v2, v2, 0xf

    .line 96
    .line 97
    invoke-virtual {v5, v2}, Ljava/lang/String;->charAt(I)C

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    add-int/lit8 v1, v1, 0x1

    .line 105
    .line 106
    goto :goto_1

    .line 107
    :cond_1
    const-string v1, "], clear "

    .line 108
    .line 109
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 110
    .line 111
    .line 112
    iget-object v1, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfClearData:[I

    .line 113
    .line 114
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 115
    .line 116
    .line 117
    move-result-object v1

    .line 118
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 119
    .line 120
    .line 121
    const-string v1, ", encrypted "

    .line 122
    .line 123
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 124
    .line 125
    .line 126
    iget-object v1, p0, Landroid/media/MediaCodec$CryptoInfo;->numBytesOfEncryptedData:[I

    .line 127
    .line 128
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object v1

    .line 132
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 133
    .line 134
    .line 135
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 136
    .line 137
    .line 138
    move-result-object v0

    .line 139
    return-object v0
.end method
