.class public Landroid/os/VibrationEffect$Waveform;
.super Landroid/os/VibrationEffect;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/VibrationEffect;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Waveform"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Landroid/os/VibrationEffect$Waveform;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAmplitudes:[I

.field private mRepeat:I

.field private mTimings:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Landroid/os/VibrationEffect$Waveform$1;

    invoke-direct {v0}, Landroid/os/VibrationEffect$Waveform$1;-><init>()V

    sput-object v0, Landroid/os/VibrationEffect$Waveform;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v0

    invoke-virtual {p1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-direct {p0, v0, v1, p1}, Landroid/os/VibrationEffect$Waveform;-><init>([J[II)V

    return-void
.end method

.method public constructor <init>([J[II)V
    .locals 3

    .line 2
    invoke-direct {p0}, Landroid/os/VibrationEffect;-><init>()V

    .line 3
    array-length v0, p1

    new-array v0, v0, [J

    iput-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    invoke-static {p1, v2, v0, v2, v1}, Ljava/lang/System;->arraycopy([JI[JII)V

    .line 5
    array-length p1, p2

    new-array p1, p1, [I

    iput-object p1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 6
    array-length v0, p2

    invoke-static {p2, v2, p1, v2, v0}, Ljava/lang/System;->arraycopy([II[III)V

    .line 7
    iput p3, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return-void
.end method

.method private static hasNonZeroEntry([J)Z
    .locals 7

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-wide v3, p0, v2

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-eqz v3, :cond_0

    const/4 p0, 0x1

    return p0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 3

    .line 1
    instance-of v0, p1, Landroid/os/VibrationEffect$Waveform;

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
    check-cast p1, Landroid/os/VibrationEffect$Waveform;

    .line 8
    .line 9
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 10
    .line 11
    iget-object v2, p1, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 12
    .line 13
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([J[J)Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 20
    .line 21
    iget-object v2, p1, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 22
    .line 23
    invoke-static {v0, v2}, Ljava/util/Arrays;->equals([I[I)Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 30
    .line 31
    iget p1, p1, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 32
    .line 33
    if-ne v0, p1, :cond_1

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    :cond_1
    return v1
.end method

.method public getAmplitudes()[I
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    return-object v0
.end method

.method public getRepeatIndex()I
    .locals 1

    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    return v0
.end method

.method public getTimings()[J
    .locals 1

    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([J)I

    .line 4
    .line 5
    .line 6
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 7
    .line 8
    invoke-static {v0}, Ljava/util/Arrays;->hashCode([I)I

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 12
    .line 13
    mul-int/lit8 v0, v0, 0x25

    .line 14
    .line 15
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const-string v1, "Waveform{mTimings="

    .line 4
    .line 5
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 9
    .line 10
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    const-string v1, ", mAmplitudes="

    .line 18
    .line 19
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    .line 21
    .line 22
    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 23
    .line 24
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 29
    .line 30
    .line 31
    const-string v1, ", mRepeat="

    .line 32
    .line 33
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 34
    .line 35
    .line 36
    iget v1, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 37
    .line 38
    const-string/jumbo v2, "}"

    .line 39
    .line 40
    .line 41
    invoke-static {v0, v1, v2}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v0

    .line 45
    return-object v0
.end method

.method public validate()V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 5
    .line 6
    array-length v2, v2

    .line 7
    const-string v3, ")"

    .line 8
    .line 9
    if-ne v1, v2, :cond_6

    .line 10
    .line 11
    invoke-static {v0}, Landroid/os/VibrationEffect$Waveform;->hasNonZeroEntry([J)Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-eqz v0, :cond_5

    .line 16
    .line 17
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 18
    .line 19
    array-length v1, v0

    .line 20
    const/4 v2, 0x0

    .line 21
    move v4, v2

    .line 22
    :goto_0
    if-ge v4, v1, :cond_1

    .line 23
    .line 24
    aget-wide v5, v0, v4

    .line 25
    .line 26
    const-wide/16 v7, 0x0

    .line 27
    .line 28
    cmp-long v5, v5, v7

    .line 29
    .line 30
    if-ltz v5, :cond_0

    .line 31
    .line 32
    add-int/lit8 v4, v4, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 36
    .line 37
    new-instance v1, Ljava/lang/StringBuilder;

    .line 38
    .line 39
    const-string/jumbo v2, "timings must all be >= 0 (timings="

    .line 40
    .line 41
    .line 42
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 43
    .line 44
    .line 45
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 46
    .line 47
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 58
    .line 59
    .line 60
    move-result-object v1

    .line 61
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw v0

    .line 65
    :cond_1
    iget-object v0, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 66
    .line 67
    array-length v1, v0

    .line 68
    :goto_1
    const/4 v4, -0x1

    .line 69
    if-ge v2, v1, :cond_3

    .line 70
    .line 71
    aget v5, v0, v2

    .line 72
    .line 73
    if-lt v5, v4, :cond_2

    .line 74
    .line 75
    const/16 v4, 0xff

    .line 76
    .line 77
    if-gt v5, v4, :cond_2

    .line 78
    .line 79
    add-int/lit8 v2, v2, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 83
    .line 84
    new-instance v1, Ljava/lang/StringBuilder;

    .line 85
    .line 86
    const-string v2, "amplitudes must all be DEFAULT_AMPLITUDE or between 0 and 255 (amplitudes="

    .line 87
    .line 88
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 92
    .line 93
    invoke-static {v2}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    .line 94
    .line 95
    .line 96
    move-result-object v2

    .line 97
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 101
    .line 102
    .line 103
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 108
    .line 109
    .line 110
    throw v0

    .line 111
    :cond_3
    iget v0, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 112
    .line 113
    if-lt v0, v4, :cond_4

    .line 114
    .line 115
    iget-object v1, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 116
    .line 117
    array-length v1, v1

    .line 118
    if-ge v0, v1, :cond_4

    .line 119
    .line 120
    return-void

    .line 121
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 122
    .line 123
    new-instance v1, Ljava/lang/StringBuilder;

    .line 124
    .line 125
    const-string/jumbo v2, "repeat index must be within the bounds of the timings array (timings.length="

    .line 126
    .line 127
    .line 128
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 129
    .line 130
    .line 131
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 132
    .line 133
    array-length v2, v2

    .line 134
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    .line 136
    .line 137
    const-string v2, ", index="

    .line 138
    .line 139
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 140
    .line 141
    .line 142
    iget v2, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 143
    .line 144
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 149
    .line 150
    .line 151
    throw v0

    .line 152
    :cond_5
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    new-instance v1, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v2, "at least one timing must be non-zero (timings="

    .line 157
    .line 158
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 162
    .line 163
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    .line 164
    .line 165
    .line 166
    move-result-object v2

    .line 167
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 168
    .line 169
    .line 170
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 178
    .line 179
    .line 180
    throw v0

    .line 181
    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 182
    .line 183
    new-instance v1, Ljava/lang/StringBuilder;

    .line 184
    .line 185
    const-string/jumbo v2, "timing and amplitude arrays must be of equal length (timings.length="

    .line 186
    .line 187
    .line 188
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 189
    .line 190
    .line 191
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 192
    .line 193
    array-length v2, v2

    .line 194
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 195
    .line 196
    .line 197
    const-string v2, ", amplitudes.length="

    .line 198
    .line 199
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    iget-object v2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 203
    .line 204
    array-length v2, v2

    .line 205
    invoke-static {v1, v2, v3}, Landroid/accessibilityservice/c;->m(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 210
    .line 211
    .line 212
    throw v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const/4 p2, 0x2

    .line 2
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    .line 4
    .line 5
    iget-object p2, p0, Landroid/os/VibrationEffect$Waveform;->mTimings:[J

    .line 6
    .line 7
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeLongArray([J)V

    .line 8
    .line 9
    .line 10
    iget-object p2, p0, Landroid/os/VibrationEffect$Waveform;->mAmplitudes:[I

    .line 11
    .line 12
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 13
    .line 14
    .line 15
    iget p2, p0, Landroid/os/VibrationEffect$Waveform;->mRepeat:I

    .line 16
    .line 17
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 18
    .line 19
    .line 20
    return-void
.end method
