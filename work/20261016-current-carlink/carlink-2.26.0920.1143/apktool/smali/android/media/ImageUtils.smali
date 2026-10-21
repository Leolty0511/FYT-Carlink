.class Landroid/media/ImageUtils;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V
    .locals 6

    int-to-long v4, p4

    move-object v0, p2

    move v1, p3

    move-object v2, p0

    move v3, p1

    invoke-static/range {v0 .. v5}, Llibcore/io/Memory;->memmove(Ljava/lang/Object;ILjava/lang/Object;IJ)V

    return-void
.end method

.method private static getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    if-eq v0, v1, :cond_6

    .line 7
    .line 8
    const/4 v2, 0x2

    .line 9
    if-eq v0, v2, :cond_6

    .line 10
    .line 11
    const/4 v3, 0x3

    .line 12
    if-eq v0, v3, :cond_6

    .line 13
    .line 14
    const/4 v3, 0x4

    .line 15
    if-eq v0, v3, :cond_6

    .line 16
    .line 17
    const/16 v3, 0x10

    .line 18
    .line 19
    if-eq v0, v3, :cond_4

    .line 20
    .line 21
    const/16 v3, 0x11

    .line 22
    .line 23
    if-eq v0, v3, :cond_2

    .line 24
    .line 25
    const/16 v3, 0x14

    .line 26
    .line 27
    if-eq v0, v3, :cond_6

    .line 28
    .line 29
    const/16 v3, 0x20

    .line 30
    .line 31
    if-eq v0, v3, :cond_6

    .line 32
    .line 33
    const/16 v3, 0x100

    .line 34
    .line 35
    if-eq v0, v3, :cond_6

    .line 36
    .line 37
    const/16 v3, 0x1002

    .line 38
    .line 39
    if-eq v0, v3, :cond_6

    .line 40
    .line 41
    const v3, 0x20203859

    .line 42
    .line 43
    .line 44
    if-eq v0, v3, :cond_6

    .line 45
    .line 46
    const v3, 0x20363159

    .line 47
    .line 48
    .line 49
    if-eq v0, v3, :cond_6

    .line 50
    .line 51
    const v3, 0x32315659

    .line 52
    .line 53
    .line 54
    if-eq v0, v3, :cond_2

    .line 55
    .line 56
    const/16 v3, 0x22

    .line 57
    .line 58
    const/4 v4, 0x0

    .line 59
    if-eq v0, v3, :cond_1

    .line 60
    .line 61
    const/16 v3, 0x23

    .line 62
    .line 63
    if-eq v0, v3, :cond_2

    .line 64
    .line 65
    const/16 p1, 0x25

    .line 66
    .line 67
    if-eq v0, p1, :cond_6

    .line 68
    .line 69
    const/16 p1, 0x26

    .line 70
    .line 71
    if-ne v0, p1, :cond_0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_0
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    .line 75
    .line 76
    new-array v0, v1, [Ljava/lang/Object;

    .line 77
    .line 78
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 79
    .line 80
    .line 81
    move-result p0

    .line 82
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 83
    .line 84
    .line 85
    move-result-object p0

    .line 86
    aput-object p0, v0, v4

    .line 87
    .line 88
    const-string p0, "Invalid image format %d"

    .line 89
    .line 90
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 95
    .line 96
    .line 97
    throw p1

    .line 98
    :cond_1
    new-instance p0, Landroid/util/Size;

    .line 99
    .line 100
    invoke-direct {p0, v4, v4}, Landroid/util/Size;-><init>(II)V

    .line 101
    .line 102
    .line 103
    return-object p0

    .line 104
    :cond_2
    if-nez p1, :cond_3

    .line 105
    .line 106
    new-instance p1, Landroid/util/Size;

    .line 107
    .line 108
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 109
    .line 110
    .line 111
    move-result v0

    .line 112
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 113
    .line 114
    .line 115
    move-result p0

    .line 116
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 117
    .line 118
    .line 119
    return-object p1

    .line 120
    :cond_3
    new-instance p1, Landroid/util/Size;

    .line 121
    .line 122
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 123
    .line 124
    .line 125
    move-result v0

    .line 126
    div-int/2addr v0, v2

    .line 127
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 128
    .line 129
    .line 130
    move-result p0

    .line 131
    div-int/2addr p0, v2

    .line 132
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 133
    .line 134
    .line 135
    return-object p1

    .line 136
    :cond_4
    if-nez p1, :cond_5

    .line 137
    .line 138
    new-instance p1, Landroid/util/Size;

    .line 139
    .line 140
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 141
    .line 142
    .line 143
    move-result v0

    .line 144
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 145
    .line 146
    .line 147
    move-result p0

    .line 148
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 149
    .line 150
    .line 151
    return-object p1

    .line 152
    :cond_5
    new-instance p1, Landroid/util/Size;

    .line 153
    .line 154
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 155
    .line 156
    .line 157
    move-result v0

    .line 158
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 159
    .line 160
    .line 161
    move-result p0

    .line 162
    div-int/2addr p0, v2

    .line 163
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 164
    .line 165
    .line 166
    return-object p1

    .line 167
    :cond_6
    :goto_0
    new-instance p1, Landroid/util/Size;

    .line 168
    .line 169
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 170
    .line 171
    .line 172
    move-result v0

    .line 173
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 174
    .line 175
    .line 176
    move-result p0

    .line 177
    invoke-direct {p1, v0, p0}, Landroid/util/Size;-><init>(II)V

    .line 178
    .line 179
    .line 180
    return-object p1
.end method

.method public static getEstimatedNativeAllocBytes(IIII)I
    .locals 2

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p2, v0, :cond_4

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p2, v1, :cond_4

    .line 6
    .line 7
    const/4 v1, 0x3

    .line 8
    if-eq p2, v1, :cond_3

    .line 9
    .line 10
    const/4 v1, 0x4

    .line 11
    if-eq p2, v1, :cond_2

    .line 12
    .line 13
    const/16 v1, 0x10

    .line 14
    .line 15
    if-eq p2, v1, :cond_2

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    if-eq p2, v1, :cond_1

    .line 20
    .line 21
    const/16 v1, 0x100

    .line 22
    .line 23
    if-eq p2, v1, :cond_0

    .line 24
    .line 25
    const/16 v1, 0x101

    .line 26
    .line 27
    if-eq p2, v1, :cond_0

    .line 28
    .line 29
    sparse-switch p2, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    packed-switch p2, :pswitch_data_0

    .line 33
    .line 34
    .line 35
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 36
    .line 37
    new-array p1, v0, [Ljava/lang/Object;

    .line 38
    .line 39
    const/4 p3, 0x0

    .line 40
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p2

    .line 44
    aput-object p2, p1, p3

    .line 45
    .line 46
    const-string p2, "Invalid format specified %d"

    .line 47
    .line 48
    invoke-static {p2, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p1

    .line 52
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw p0

    .line 56
    :pswitch_0
    const-wide/high16 v0, 0x3ff4000000000000L    # 1.25

    .line 57
    .line 58
    goto :goto_0

    .line 59
    :sswitch_0
    const-wide/high16 v0, 0x3ff0000000000000L    # 1.0

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_0
    const-wide v0, 0x3fd3333333333333L    # 0.3

    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_1
    :pswitch_1
    :sswitch_1
    const-wide/high16 v0, 0x3ff8000000000000L    # 1.5

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    :pswitch_2
    :sswitch_2
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    const-wide/high16 v0, 0x4008000000000000L    # 3.0

    .line 75
    .line 76
    goto :goto_0

    .line 77
    :cond_4
    const-wide/high16 v0, 0x4010000000000000L    # 4.0

    .line 78
    .line 79
    :goto_0
    mul-int/2addr p0, p1

    .line 80
    int-to-double p0, p0

    .line 81
    mul-double/2addr p0, v0

    .line 82
    int-to-double p2, p3

    .line 83
    mul-double/2addr p0, p2

    .line 84
    double-to-int p0, p0

    .line 85
    return p0

    .line 86
    nop

    .line 87
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_2
        0x20 -> :sswitch_2
        0x1002 -> :sswitch_2
        0x20203859 -> :sswitch_0
        0x20363159 -> :sswitch_2
        0x32315659 -> :sswitch_1
        0x44363159 -> :sswitch_2
    .end sparse-switch

    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static getNumPlanesForFormat(I)I
    .locals 4

    .line 1
    const/4 v0, 0x1

    .line 2
    if-eq p0, v0, :cond_2

    .line 3
    .line 4
    const/4 v1, 0x2

    .line 5
    if-eq p0, v1, :cond_2

    .line 6
    .line 7
    const/4 v2, 0x3

    .line 8
    if-eq p0, v2, :cond_2

    .line 9
    .line 10
    const/4 v3, 0x4

    .line 11
    if-eq p0, v3, :cond_2

    .line 12
    .line 13
    const/16 v3, 0x10

    .line 14
    .line 15
    if-eq p0, v3, :cond_1

    .line 16
    .line 17
    const/16 v1, 0x11

    .line 18
    .line 19
    if-eq p0, v1, :cond_0

    .line 20
    .line 21
    const/16 v1, 0x100

    .line 22
    .line 23
    if-eq p0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x101

    .line 26
    .line 27
    if-eq p0, v1, :cond_2

    .line 28
    .line 29
    sparse-switch p0, :sswitch_data_0

    .line 30
    .line 31
    .line 32
    const/4 v1, 0x0

    .line 33
    packed-switch p0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    .line 37
    .line 38
    new-array v0, v0, [Ljava/lang/Object;

    .line 39
    .line 40
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 41
    .line 42
    .line 43
    move-result-object p0

    .line 44
    aput-object p0, v0, v1

    .line 45
    .line 46
    const-string p0, "Invalid format specified %d"

    .line 47
    .line 48
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 49
    .line 50
    .line 51
    move-result-object p0

    .line 52
    invoke-direct {v2, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 53
    .line 54
    .line 55
    throw v2

    .line 56
    :pswitch_0
    return v1

    .line 57
    :cond_0
    :pswitch_1
    :sswitch_0
    return v2

    .line 58
    :cond_1
    return v1

    .line 59
    :cond_2
    :pswitch_2
    :sswitch_1
    return v0

    .line 60
    nop

    .line 61
    :sswitch_data_0
    .sparse-switch
        0x14 -> :sswitch_1
        0x20 -> :sswitch_1
        0x1002 -> :sswitch_1
        0x20203859 -> :sswitch_1
        0x20363159 -> :sswitch_1
        0x32315659 -> :sswitch_0
        0x44363159 -> :sswitch_1
    .end sparse-switch

    .line 62
    .line 63
    .line 64
    .line 65
    .line 66
    .line 67
    .line 68
    .line 69
    .line 70
    :pswitch_data_0
    .packed-switch 0x22
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public static imageCopy(Landroid/media/Image;Landroid/media/Image;)V
    .locals 14

    .line 1
    if-eqz p0, :cond_c

    .line 2
    .line 3
    if-eqz p1, :cond_c

    .line 4
    .line 5
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-ne v0, v1, :cond_b

    .line 14
    .line 15
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    const/16 v1, 0x22

    .line 20
    .line 21
    if-eq v0, v1, :cond_a

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/media/Image;->getFormat()I

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eq v0, v1, :cond_a

    .line 28
    .line 29
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    const/16 v1, 0x24

    .line 34
    .line 35
    if-eq v0, v1, :cond_9

    .line 36
    .line 37
    invoke-virtual {p0}, Landroid/media/Image;->getFormat()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    const/16 v1, 0x1002

    .line 42
    .line 43
    if-eq v0, v1, :cond_8

    .line 44
    .line 45
    invoke-virtual {p1}, Landroid/media/Image;->getOwner()Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v0

    .line 49
    instance-of v0, v0, Landroid/media/ImageWriter;

    .line 50
    .line 51
    if-eqz v0, :cond_7

    .line 52
    .line 53
    new-instance v0, Landroid/util/Size;

    .line 54
    .line 55
    invoke-virtual {p0}, Landroid/media/Image;->getWidth()I

    .line 56
    .line 57
    .line 58
    move-result v1

    .line 59
    invoke-virtual {p0}, Landroid/media/Image;->getHeight()I

    .line 60
    .line 61
    .line 62
    move-result v2

    .line 63
    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    .line 64
    .line 65
    .line 66
    new-instance v1, Landroid/util/Size;

    .line 67
    .line 68
    invoke-virtual {p1}, Landroid/media/Image;->getWidth()I

    .line 69
    .line 70
    .line 71
    move-result v2

    .line 72
    invoke-virtual {p1}, Landroid/media/Image;->getHeight()I

    .line 73
    .line 74
    .line 75
    move-result v3

    .line 76
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 77
    .line 78
    .line 79
    invoke-virtual {v0, v1}, Landroid/util/Size;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_6

    .line 84
    .line 85
    invoke-virtual {p0}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 86
    .line 87
    .line 88
    move-result-object v0

    .line 89
    invoke-virtual {p1}, Landroid/media/Image;->getPlanes()[Landroid/media/Image$Plane;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    const/4 v1, 0x0

    .line 94
    move v2, v1

    .line 95
    :goto_0
    array-length v3, v0

    .line 96
    if-ge v2, v3, :cond_5

    .line 97
    .line 98
    aget-object v3, v0, v2

    .line 99
    .line 100
    invoke-virtual {v3}, Landroid/media/Image$Plane;->getRowStride()I

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    aget-object v4, p1, v2

    .line 105
    .line 106
    invoke-virtual {v4}, Landroid/media/Image$Plane;->getRowStride()I

    .line 107
    .line 108
    .line 109
    move-result v4

    .line 110
    aget-object v5, v0, v2

    .line 111
    .line 112
    invoke-virtual {v5}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 113
    .line 114
    .line 115
    move-result-object v5

    .line 116
    aget-object v6, p1, v2

    .line 117
    .line 118
    invoke-virtual {v6}, Landroid/media/Image$Plane;->getBuffer()Ljava/nio/ByteBuffer;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 123
    .line 124
    .line 125
    move-result v7

    .line 126
    if-eqz v7, :cond_4

    .line 127
    .line 128
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->isDirect()Z

    .line 129
    .line 130
    .line 131
    move-result v7

    .line 132
    if-eqz v7, :cond_4

    .line 133
    .line 134
    aget-object v7, v0, v2

    .line 135
    .line 136
    invoke-virtual {v7}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 137
    .line 138
    .line 139
    move-result v7

    .line 140
    aget-object v8, p1, v2

    .line 141
    .line 142
    invoke-virtual {v8}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 143
    .line 144
    .line 145
    move-result v8

    .line 146
    if-ne v7, v8, :cond_3

    .line 147
    .line 148
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 149
    .line 150
    .line 151
    move-result v7

    .line 152
    invoke-virtual {v5}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 153
    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 156
    .line 157
    .line 158
    if-ne v3, v4, :cond_0

    .line 159
    .line 160
    invoke-virtual {v6, v5}, Ljava/nio/ByteBuffer;->put(Ljava/nio/ByteBuffer;)Ljava/nio/ByteBuffer;

    .line 161
    .line 162
    .line 163
    goto :goto_2

    .line 164
    :cond_0
    invoke-virtual {v5}, Ljava/nio/Buffer;->position()I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    invoke-virtual {v6}, Ljava/nio/Buffer;->position()I

    .line 169
    .line 170
    .line 171
    move-result v9

    .line 172
    invoke-static {p0, v2}, Landroid/media/ImageUtils;->getEffectivePlaneSizeForImage(Landroid/media/Image;I)Landroid/util/Size;

    .line 173
    .line 174
    .line 175
    move-result-object v10

    .line 176
    invoke-virtual {v10}, Landroid/util/Size;->getWidth()I

    .line 177
    .line 178
    .line 179
    move-result v11

    .line 180
    aget-object v12, v0, v2

    .line 181
    .line 182
    invoke-virtual {v12}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 183
    .line 184
    .line 185
    move-result v12

    .line 186
    mul-int/2addr v12, v11

    .line 187
    move v11, v1

    .line 188
    :goto_1
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 189
    .line 190
    .line 191
    move-result v13

    .line 192
    if-ge v11, v13, :cond_2

    .line 193
    .line 194
    invoke-virtual {v10}, Landroid/util/Size;->getHeight()I

    .line 195
    .line 196
    .line 197
    move-result v13

    .line 198
    add-int/lit8 v13, v13, -0x1

    .line 199
    .line 200
    if-ne v11, v13, :cond_1

    .line 201
    .line 202
    invoke-virtual {v5}, Ljava/nio/Buffer;->remaining()I

    .line 203
    .line 204
    .line 205
    move-result v13

    .line 206
    sub-int/2addr v13, v8

    .line 207
    if-le v12, v13, :cond_1

    .line 208
    .line 209
    move v12, v13

    .line 210
    :cond_1
    invoke-static {v5, v8, v6, v9, v12}, Landroid/media/ImageUtils;->directByteBufferCopy(Ljava/nio/ByteBuffer;ILjava/nio/ByteBuffer;II)V

    .line 211
    .line 212
    .line 213
    add-int/2addr v8, v3

    .line 214
    add-int/2addr v9, v4

    .line 215
    add-int/lit8 v11, v11, 0x1

    .line 216
    .line 217
    goto :goto_1

    .line 218
    :cond_2
    :goto_2
    invoke-virtual {v5, v7}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    .line 219
    .line 220
    .line 221
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    .line 222
    .line 223
    .line 224
    add-int/lit8 v2, v2, 0x1

    .line 225
    .line 226
    goto/16 :goto_0

    .line 227
    .line 228
    :cond_3
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 229
    .line 230
    new-instance v1, Ljava/lang/StringBuilder;

    .line 231
    .line 232
    const-string v3, "Source plane image pixel stride "

    .line 233
    .line 234
    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 235
    .line 236
    .line 237
    aget-object v0, v0, v2

    .line 238
    .line 239
    invoke-virtual {v0}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 240
    .line 241
    .line 242
    move-result v0

    .line 243
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 244
    .line 245
    .line 246
    const-string v0, " must be same as destination image pixel stride "

    .line 247
    .line 248
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 249
    .line 250
    .line 251
    aget-object p1, p1, v2

    .line 252
    .line 253
    invoke-virtual {p1}, Landroid/media/Image$Plane;->getPixelStride()I

    .line 254
    .line 255
    .line 256
    move-result p1

    .line 257
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 258
    .line 259
    .line 260
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 261
    .line 262
    .line 263
    move-result-object p1

    .line 264
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 265
    .line 266
    .line 267
    throw p0

    .line 268
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 269
    .line 270
    const-string p1, "Source and destination ByteBuffers must be direct byteBuffer!"

    .line 271
    .line 272
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 273
    .line 274
    .line 275
    throw p0

    .line 276
    :cond_5
    return-void

    .line 277
    :cond_6
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 278
    .line 279
    new-instance p1, Ljava/lang/StringBuilder;

    .line 280
    .line 281
    const-string/jumbo v2, "source image size "

    .line 282
    .line 283
    .line 284
    invoke-direct {p1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 285
    .line 286
    .line 287
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 288
    .line 289
    .line 290
    const-string v0, " is different with destination image size "

    .line 291
    .line 292
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object p1

    .line 302
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 303
    .line 304
    .line 305
    throw p0

    .line 306
    :cond_7
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 307
    .line 308
    const-string p1, "Destination image is not from ImageWriter. Only the images from ImageWriter are writable"

    .line 309
    .line 310
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 311
    .line 312
    .line 313
    throw p0

    .line 314
    :cond_8
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 315
    .line 316
    const-string p1, "Copy of RAW_DEPTH format has not been implemented"

    .line 317
    .line 318
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 319
    .line 320
    .line 321
    throw p0

    .line 322
    :cond_9
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 323
    .line 324
    const-string p1, "Copy of RAW_OPAQUE format has not been implemented"

    .line 325
    .line 326
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 327
    .line 328
    .line 329
    throw p0

    .line 330
    :cond_a
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 331
    .line 332
    const-string p1, "PRIVATE format images are not copyable"

    .line 333
    .line 334
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 335
    .line 336
    .line 337
    throw p0

    .line 338
    :cond_b
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 339
    .line 340
    const-string p1, "Src and dst images should have the same format"

    .line 341
    .line 342
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 343
    .line 344
    .line 345
    throw p0

    .line 346
    :cond_c
    new-instance p0, Ljava/lang/IllegalArgumentException;

    .line 347
    .line 348
    const-string p1, "Images should be non-null"

    .line 349
    .line 350
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 351
    .line 352
    .line 353
    throw p0
.end method
