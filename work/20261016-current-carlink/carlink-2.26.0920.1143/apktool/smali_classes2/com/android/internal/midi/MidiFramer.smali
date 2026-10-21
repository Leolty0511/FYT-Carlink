.class public Lcom/android/internal/midi/MidiFramer;
.super Landroid/media/midi/MidiReceiver;
.source "SourceFile"


# instance fields
.field public TAG:Ljava/lang/String;

.field private mBuffer:[B

.field private mCount:I

.field private mInSysEx:Z

.field private mNeeded:I

.field private mReceiver:Landroid/media/midi/MidiReceiver;

.field private mRunningStatus:B


# direct methods
.method public constructor <init>(Landroid/media/midi/MidiReceiver;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/media/midi/MidiReceiver;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "MidiFramer"

    .line 5
    .line 6
    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->TAG:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v0, 0x3

    .line 9
    new-array v0, v0, [B

    .line 10
    .line 11
    iput-object v0, p0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 12
    .line 13
    iput-object p1, p0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 14
    .line 15
    return-void
.end method

.method public static formatMidiData([BII)Ljava/lang/String;
    .locals 5

    .line 1
    const-string v0, "MIDI+"

    .line 2
    .line 3
    const-string v1, " : "

    .line 4
    .line 5
    invoke-static {v0, p1, v1}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, p2, :cond_0

    .line 12
    .line 13
    invoke-static {v0}, Landroid/accessibilityservice/c;->r(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v3, 0x1

    .line 18
    new-array v3, v3, [Ljava/lang/Object;

    .line 19
    .line 20
    add-int v4, p1, v2

    .line 21
    .line 22
    aget-byte v4, p0, v4

    .line 23
    .line 24
    invoke-static {v4}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    .line 25
    .line 26
    .line 27
    move-result-object v4

    .line 28
    aput-object v4, v3, v1

    .line 29
    .line 30
    const-string v4, "0x%02X, "

    .line 31
    .line 32
    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    add-int/lit8 v2, v2, 0x1

    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    return-object v0
.end method


# virtual methods
.method public onSend([BIIJ)V
    .locals 18

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 4
    .line 5
    const/4 v2, -0x1

    .line 6
    if-eqz v1, :cond_0

    .line 7
    .line 8
    move/from16 v1, p2

    .line 9
    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v1, v2

    .line 12
    :goto_0
    const/4 v3, 0x0

    .line 13
    move/from16 v10, p3

    .line 14
    .line 15
    move v6, v1

    .line 16
    move v11, v3

    .line 17
    move/from16 v1, p2

    .line 18
    .line 19
    :goto_1
    if-ge v11, v10, :cond_9

    .line 20
    .line 21
    aget-byte v4, p1, v1

    .line 22
    .line 23
    and-int/lit16 v5, v4, 0xff

    .line 24
    .line 25
    const/16 v7, 0x80

    .line 26
    .line 27
    const/4 v8, 0x1

    .line 28
    if-lt v5, v7, :cond_6

    .line 29
    .line 30
    const/16 v7, 0xf0

    .line 31
    .line 32
    if-ge v5, v7, :cond_1

    .line 33
    .line 34
    iput-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 35
    .line 36
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 37
    .line 38
    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    .line 39
    .line 40
    .line 41
    move-result v4

    .line 42
    sub-int/2addr v4, v8

    .line 43
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 44
    .line 45
    goto/16 :goto_2

    .line 46
    .line 47
    :cond_1
    const/16 v9, 0xf8

    .line 48
    .line 49
    if-ge v5, v9, :cond_4

    .line 50
    .line 51
    if-ne v5, v7, :cond_2

    .line 52
    .line 53
    iput-boolean v8, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 54
    .line 55
    move v6, v1

    .line 56
    goto/16 :goto_2

    .line 57
    .line 58
    :cond_2
    const/16 v7, 0xf7

    .line 59
    .line 60
    if-ne v5, v7, :cond_3

    .line 61
    .line 62
    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 63
    .line 64
    if-eqz v4, :cond_8

    .line 65
    .line 66
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 67
    .line 68
    sub-int v5, v1, v6

    .line 69
    .line 70
    add-int/lit8 v7, v5, 0x1

    .line 71
    .line 72
    move-object/from16 v5, p1

    .line 73
    .line 74
    move-wide/from16 v8, p4

    .line 75
    .line 76
    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 77
    .line 78
    .line 79
    iput-boolean v3, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 80
    .line 81
    move v6, v2

    .line 82
    goto :goto_2

    .line 83
    :cond_3
    iget-object v5, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 84
    .line 85
    aput-byte v4, v5, v3

    .line 86
    .line 87
    iput-byte v3, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 88
    .line 89
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 90
    .line 91
    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    .line 92
    .line 93
    .line 94
    move-result v4

    .line 95
    sub-int/2addr v4, v8

    .line 96
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 97
    .line 98
    goto :goto_2

    .line 99
    :cond_4
    iget-boolean v4, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 100
    .line 101
    if-eqz v4, :cond_5

    .line 102
    .line 103
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 104
    .line 105
    sub-int v7, v1, v6

    .line 106
    .line 107
    move-object/from16 v5, p1

    .line 108
    .line 109
    move-wide/from16 v8, p4

    .line 110
    .line 111
    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 112
    .line 113
    .line 114
    add-int/lit8 v6, v1, 0x1

    .line 115
    .line 116
    :cond_5
    move v12, v6

    .line 117
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 118
    .line 119
    const/4 v7, 0x1

    .line 120
    move-object/from16 v5, p1

    .line 121
    .line 122
    move v6, v1

    .line 123
    move-wide/from16 v8, p4

    .line 124
    .line 125
    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 126
    .line 127
    .line 128
    move v6, v12

    .line 129
    goto :goto_2

    .line 130
    :cond_6
    iget-boolean v5, v0, Lcom/android/internal/midi/MidiFramer;->mInSysEx:Z

    .line 131
    .line 132
    if-nez v5, :cond_8

    .line 133
    .line 134
    iget-object v13, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 135
    .line 136
    iget v5, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 137
    .line 138
    add-int/lit8 v15, v5, 0x1

    .line 139
    .line 140
    iput v15, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 141
    .line 142
    aput-byte v4, v13, v5

    .line 143
    .line 144
    iget v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 145
    .line 146
    sub-int/2addr v4, v8

    .line 147
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 148
    .line 149
    if-nez v4, :cond_8

    .line 150
    .line 151
    iget-byte v4, v0, Lcom/android/internal/midi/MidiFramer;->mRunningStatus:B

    .line 152
    .line 153
    if-eqz v4, :cond_7

    .line 154
    .line 155
    aput-byte v4, v13, v3

    .line 156
    .line 157
    :cond_7
    iget-object v12, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 158
    .line 159
    const/4 v14, 0x0

    .line 160
    move-wide/from16 v16, p4

    .line 161
    .line 162
    invoke-virtual/range {v12 .. v17}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 163
    .line 164
    .line 165
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mBuffer:[B

    .line 166
    .line 167
    aget-byte v4, v4, v3

    .line 168
    .line 169
    invoke-static {v4}, Lcom/android/internal/midi/MidiConstants;->getBytesPerMessage(B)I

    .line 170
    .line 171
    .line 172
    move-result v4

    .line 173
    sub-int/2addr v4, v8

    .line 174
    iput v4, v0, Lcom/android/internal/midi/MidiFramer;->mNeeded:I

    .line 175
    .line 176
    iput v8, v0, Lcom/android/internal/midi/MidiFramer;->mCount:I

    .line 177
    .line 178
    :cond_8
    :goto_2
    add-int/lit8 v1, v1, 0x1

    .line 179
    .line 180
    add-int/lit8 v11, v11, 0x1

    .line 181
    .line 182
    goto/16 :goto_1

    .line 183
    .line 184
    :cond_9
    if-ltz v6, :cond_a

    .line 185
    .line 186
    if-ge v6, v1, :cond_a

    .line 187
    .line 188
    iget-object v4, v0, Lcom/android/internal/midi/MidiFramer;->mReceiver:Landroid/media/midi/MidiReceiver;

    .line 189
    .line 190
    sub-int v7, v1, v6

    .line 191
    .line 192
    move-object/from16 v5, p1

    .line 193
    .line 194
    move-wide/from16 v8, p4

    .line 195
    .line 196
    invoke-virtual/range {v4 .. v9}, Landroid/media/midi/MidiReceiver;->send([BIIJ)V

    .line 197
    .line 198
    .line 199
    :cond_a
    return-void
.end method
