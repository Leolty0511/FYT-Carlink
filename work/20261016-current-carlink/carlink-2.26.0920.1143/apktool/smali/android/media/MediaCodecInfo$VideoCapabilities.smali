.class public final Landroid/media/MediaCodecInfo$VideoCapabilities;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/MediaCodecInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "VideoCapabilities"
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "VideoCapabilities"


# instance fields
.field private mAllowMbOverride:Z

.field private mAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBitrateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockAspectRatioRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockCountRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mBlockHeight:I

.field private mBlockWidth:I

.field private mBlocksPerSecondRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mFrameRateRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHeightAlignment:I

.field private mHeightRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mHorizontalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mMeasuredFrameRates:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

.field private mSmallerDimensionUpperLimit:I

.field private mVerticalBlockRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private mWidthAlignment:I

.field private mWidthRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private applyAlignment(II)V
    .locals 8

    .line 1
    const-string/jumbo v0, "widthAlignment must be a power of two"

    .line 2
    .line 3
    .line 4
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 5
    .line 6
    .line 7
    const-string/jumbo v0, "heightAlignment must be a power of two"

    .line 8
    .line 9
    .line 10
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 11
    .line 12
    .line 13
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 14
    .line 15
    if-gt p1, v0, :cond_0

    .line 16
    .line 17
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 18
    .line 19
    if-le p2, v1, :cond_1

    .line 20
    .line 21
    :cond_0
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 26
    .line 27
    invoke-static {p2, v0}, Ljava/lang/Math;->max(II)I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    .line 32
    .line 33
    .line 34
    move-result-object v5

    .line 35
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    .line 36
    .line 37
    .line 38
    move-result-object v6

    .line 39
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    .line 40
    .line 41
    .line 42
    move-result-object v7

    .line 43
    move-object v2, p0

    .line 44
    invoke-direct/range {v2 .. v7}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 45
    .line 46
    .line 47
    :cond_1
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 48
    .line 49
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 54
    .line 55
    iget p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 56
    .line 57
    invoke-static {p2, p1}, Ljava/lang/Math;->max(II)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 62
    .line 63
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 64
    .line 65
    iget p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 66
    .line 67
    invoke-static {p1, p2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 68
    .line 69
    .line 70
    move-result-object p1

    .line 71
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 72
    .line 73
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 74
    .line 75
    iget p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 76
    .line 77
    invoke-static {p1, p2}, Landroid/media/Utils;->alignRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 82
    .line 83
    return-void
.end method

.method private applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;)V"
        }
    .end annotation

    .line 1
    const-string v0, "blockWidth must be a power of two"

    .line 2
    .line 3
    invoke-static {p1, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 4
    .line 5
    .line 6
    const-string v0, "blockHeight must be a power of two"

    .line 7
    .line 8
    invoke-static {p2, v0}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 9
    .line 10
    .line 11
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 12
    .line 13
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 18
    .line 19
    invoke-static {p2, v1}, Ljava/lang/Math;->max(II)I

    .line 20
    .line 21
    .line 22
    move-result v1

    .line 23
    mul-int v2, v0, v1

    .line 24
    .line 25
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 26
    .line 27
    div-int v3, v2, v3

    .line 28
    .line 29
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 30
    .line 31
    div-int/2addr v3, v4

    .line 32
    const/4 v4, 0x1

    .line 33
    if-eq v3, v4, :cond_0

    .line 34
    .line 35
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 36
    .line 37
    invoke-static {v5, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 38
    .line 39
    .line 40
    move-result-object v5

    .line 41
    iput-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 42
    .line 43
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 44
    .line 45
    int-to-long v6, v3

    .line 46
    invoke-static {v5, v6, v7}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    .line 47
    .line 48
    .line 49
    move-result-object v3

    .line 50
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 51
    .line 52
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 53
    .line 54
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 55
    .line 56
    div-int v5, v1, v5

    .line 57
    .line 58
    iget v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 59
    .line 60
    div-int v6, v0, v6

    .line 61
    .line 62
    invoke-static {v3, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    .line 63
    .line 64
    .line 65
    move-result-object v3

    .line 66
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 67
    .line 68
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 69
    .line 70
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 71
    .line 72
    div-int v5, v0, v5

    .line 73
    .line 74
    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 75
    .line 76
    .line 77
    move-result-object v3

    .line 78
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 79
    .line 80
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 81
    .line 82
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 83
    .line 84
    div-int v5, v1, v5

    .line 85
    .line 86
    invoke-static {v3, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    iput-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 91
    .line 92
    :cond_0
    div-int/2addr v2, p1

    .line 93
    div-int/2addr v2, p2

    .line 94
    if-eq v2, v4, :cond_1

    .line 95
    .line 96
    invoke-static {p3, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 97
    .line 98
    .line 99
    move-result-object p3

    .line 100
    int-to-long v2, v2

    .line 101
    invoke-static {p4, v2, v3}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    .line 102
    .line 103
    .line 104
    move-result-object p4

    .line 105
    div-int p2, v1, p2

    .line 106
    .line 107
    div-int p1, v0, p1

    .line 108
    .line 109
    invoke-static {p5, p2, p1}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    .line 110
    .line 111
    .line 112
    move-result-object p5

    .line 113
    :cond_1
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 114
    .line 115
    invoke-virtual {p1, p3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 116
    .line 117
    .line 118
    move-result-object p1

    .line 119
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 120
    .line 121
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 122
    .line 123
    invoke-virtual {p1, p4}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 124
    .line 125
    .line 126
    move-result-object p1

    .line 127
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 128
    .line 129
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 130
    .line 131
    invoke-virtual {p1, p5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 132
    .line 133
    .line 134
    move-result-object p1

    .line 135
    iput-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 136
    .line 137
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 138
    .line 139
    iput v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 140
    .line 141
    return-void
.end method

.method private applyLevelLimits()V
    .locals 43

    .line 1
    move-object/from16 v12, p0

    .line 2
    .line 3
    iget-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 4
    .line 5
    iget-object v1, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->profileLevels:[Landroid/media/MediaCodecInfo$CodecProfileLevel;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/media/MediaCodecInfo$CodecCapabilities;->getMimeType()Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    const-string/jumbo v2, "video/avc"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    const-string v10, " for "

    .line 19
    .line 20
    const/4 v11, 0x2

    .line 21
    const-string v13, "VideoCapabilities"

    .line 22
    .line 23
    const/4 v15, 0x1

    .line 24
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 25
    .line 26
    .line 27
    move-result-object v14

    .line 28
    if-eqz v2, :cond_8

    .line 29
    .line 30
    array-length v2, v1

    .line 31
    const-wide/16 v17, 0x5cd

    .line 32
    .line 33
    const v19, 0xfa00

    .line 34
    .line 35
    .line 36
    move-wide/from16 v8, v17

    .line 37
    .line 38
    move/from16 v6, v19

    .line 39
    .line 40
    const/16 v4, 0x63

    .line 41
    .line 42
    const/4 v5, 0x0

    .line 43
    const/16 v22, 0x4

    .line 44
    .line 45
    const/16 v23, 0x18c

    .line 46
    .line 47
    :goto_0
    if-ge v5, v2, :cond_7

    .line 48
    .line 49
    aget-object v7, v1, v5

    .line 50
    .line 51
    iget v3, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 52
    .line 53
    if-eq v3, v15, :cond_1

    .line 54
    .line 55
    if-eq v3, v11, :cond_0

    .line 56
    .line 57
    sparse-switch v3, :sswitch_data_0

    .line 58
    .line 59
    .line 60
    new-instance v3, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    const-string v11, "Unrecognized level "

    .line 63
    .line 64
    invoke-direct {v3, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 65
    .line 66
    .line 67
    iget v11, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 68
    .line 69
    invoke-virtual {v3, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 70
    .line 71
    .line 72
    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v3

    .line 82
    invoke-static {v13, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    .line 84
    .line 85
    or-int/lit8 v22, v22, 0x1

    .line 86
    .line 87
    move/from16 v25, v2

    .line 88
    .line 89
    const/4 v3, 0x0

    .line 90
    const/4 v11, 0x0

    .line 91
    const/16 v27, 0x0

    .line 92
    .line 93
    const/16 v28, 0x0

    .line 94
    .line 95
    goto/16 :goto_9

    .line 96
    .line 97
    :sswitch_0
    const v3, 0x1fa400

    .line 98
    .line 99
    .line 100
    goto :goto_1

    .line 101
    :sswitch_1
    const/high16 v3, 0xf0000

    .line 102
    .line 103
    :goto_1
    const v11, 0x9000

    .line 104
    .line 105
    .line 106
    const v25, 0x3a980

    .line 107
    .line 108
    .line 109
    const v26, 0x2d000

    .line 110
    .line 111
    .line 112
    goto :goto_4

    .line 113
    :sswitch_2
    const/high16 v3, 0x90000

    .line 114
    .line 115
    const/16 v11, 0x5640

    .line 116
    .line 117
    const v25, 0x20f58

    .line 118
    .line 119
    .line 120
    const v26, 0x1af40

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :sswitch_3
    const v3, 0x7f800

    .line 125
    .line 126
    .line 127
    const/16 v11, 0x2200

    .line 128
    .line 129
    const v25, 0xc350

    .line 130
    .line 131
    .line 132
    const v26, 0x8800

    .line 133
    .line 134
    .line 135
    goto :goto_4

    .line 136
    :sswitch_4
    const v3, 0x3c000

    .line 137
    .line 138
    .line 139
    const/16 v11, 0x2000

    .line 140
    .line 141
    const v25, 0xc350

    .line 142
    .line 143
    .line 144
    goto :goto_2

    .line 145
    :sswitch_5
    const v3, 0x3c000

    .line 146
    .line 147
    .line 148
    const/16 v11, 0x2000

    .line 149
    .line 150
    const/16 v25, 0x4e20

    .line 151
    .line 152
    :goto_2
    const v26, 0x8000

    .line 153
    .line 154
    .line 155
    goto :goto_4

    .line 156
    :sswitch_6
    const v3, 0x34bc0

    .line 157
    .line 158
    .line 159
    const/16 v11, 0x1400

    .line 160
    .line 161
    const/16 v25, 0x4e20

    .line 162
    .line 163
    const/16 v26, 0x5000

    .line 164
    .line 165
    goto :goto_4

    .line 166
    :sswitch_7
    const v3, 0x1a5e0

    .line 167
    .line 168
    .line 169
    const/16 v11, 0xe10

    .line 170
    .line 171
    const/16 v25, 0x36b0

    .line 172
    .line 173
    const/16 v26, 0x4650

    .line 174
    .line 175
    goto :goto_4

    .line 176
    :sswitch_8
    const v3, 0x9e34

    .line 177
    .line 178
    .line 179
    const/16 v11, 0x654

    .line 180
    .line 181
    const/16 v25, 0x2710

    .line 182
    .line 183
    goto :goto_3

    .line 184
    :sswitch_9
    const/16 v3, 0x4f1a

    .line 185
    .line 186
    const/16 v11, 0x654

    .line 187
    .line 188
    const/16 v25, 0xfa0

    .line 189
    .line 190
    :goto_3
    const/16 v26, 0x1fa4

    .line 191
    .line 192
    goto :goto_4

    .line 193
    :sswitch_a
    const/16 v3, 0x4d58

    .line 194
    .line 195
    const/16 v11, 0x318

    .line 196
    .line 197
    const/16 v25, 0xfa0

    .line 198
    .line 199
    const/16 v26, 0x1290

    .line 200
    .line 201
    :goto_4
    move/from16 v27, v25

    .line 202
    .line 203
    move/from16 v28, v26

    .line 204
    .line 205
    move/from16 v25, v2

    .line 206
    .line 207
    goto :goto_9

    .line 208
    :sswitch_b
    const/16 v3, 0x7d0

    .line 209
    .line 210
    goto :goto_5

    .line 211
    :sswitch_c
    const/16 v3, 0x300

    .line 212
    .line 213
    :goto_5
    const/16 v26, 0x948

    .line 214
    .line 215
    move/from16 v25, v2

    .line 216
    .line 217
    move/from16 v27, v3

    .line 218
    .line 219
    move/from16 v28, v26

    .line 220
    .line 221
    const/16 v3, 0x2e68

    .line 222
    .line 223
    goto :goto_7

    .line 224
    :sswitch_d
    const/16 v3, 0x1770

    .line 225
    .line 226
    const/16 v11, 0x180

    .line 227
    .line 228
    const/16 v26, 0x948

    .line 229
    .line 230
    goto :goto_6

    .line 231
    :sswitch_e
    const/16 v3, 0xbb8

    .line 232
    .line 233
    const/16 v11, 0xc0

    .line 234
    .line 235
    const/16 v26, 0x384

    .line 236
    .line 237
    :goto_6
    move/from16 v25, v2

    .line 238
    .line 239
    move/from16 v27, v11

    .line 240
    .line 241
    move/from16 v28, v26

    .line 242
    .line 243
    :goto_7
    const/16 v11, 0x18c

    .line 244
    .line 245
    goto :goto_9

    .line 246
    :cond_0
    move/from16 v25, v2

    .line 247
    .line 248
    const/16 v3, 0x5cd

    .line 249
    .line 250
    const/16 v11, 0x63

    .line 251
    .line 252
    const/16 v27, 0x80

    .line 253
    .line 254
    goto :goto_8

    .line 255
    :cond_1
    move/from16 v25, v2

    .line 256
    .line 257
    const/16 v3, 0x5cd

    .line 258
    .line 259
    const/16 v11, 0x63

    .line 260
    .line 261
    const/16 v27, 0x40

    .line 262
    .line 263
    :goto_8
    const/16 v28, 0x18c

    .line 264
    .line 265
    :goto_9
    iget v2, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 266
    .line 267
    if-eq v2, v15, :cond_3

    .line 268
    .line 269
    const/4 v15, 0x2

    .line 270
    if-eq v2, v15, :cond_3

    .line 271
    .line 272
    const/4 v15, 0x4

    .line 273
    if-eq v2, v15, :cond_4

    .line 274
    .line 275
    const/16 v15, 0x8

    .line 276
    .line 277
    if-eq v2, v15, :cond_2

    .line 278
    .line 279
    const/16 v15, 0x10

    .line 280
    .line 281
    if-eq v2, v15, :cond_5

    .line 282
    .line 283
    const/16 v15, 0x20

    .line 284
    .line 285
    if-eq v2, v15, :cond_4

    .line 286
    .line 287
    const/16 v15, 0x40

    .line 288
    .line 289
    if-eq v2, v15, :cond_4

    .line 290
    .line 291
    const/high16 v15, 0x10000

    .line 292
    .line 293
    if-eq v2, v15, :cond_3

    .line 294
    .line 295
    const/high16 v15, 0x80000

    .line 296
    .line 297
    if-eq v2, v15, :cond_2

    .line 298
    .line 299
    new-instance v2, Ljava/lang/StringBuilder;

    .line 300
    .line 301
    const-string v15, "Unrecognized profile "

    .line 302
    .line 303
    invoke-direct {v2, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 304
    .line 305
    .line 306
    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 307
    .line 308
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 309
    .line 310
    .line 311
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 312
    .line 313
    .line 314
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 315
    .line 316
    .line 317
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 318
    .line 319
    .line 320
    move-result-object v2

    .line 321
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 322
    .line 323
    .line 324
    or-int/lit8 v22, v22, 0x1

    .line 325
    .line 326
    move/from16 v2, v27

    .line 327
    .line 328
    mul-int/lit16 v2, v2, 0x3e8

    .line 329
    .line 330
    goto :goto_b

    .line 331
    :cond_2
    move/from16 v2, v27

    .line 332
    .line 333
    goto :goto_a

    .line 334
    :cond_3
    move/from16 v2, v27

    .line 335
    .line 336
    move-object/from16 v27, v14

    .line 337
    .line 338
    goto :goto_d

    .line 339
    :cond_4
    move/from16 v2, v27

    .line 340
    .line 341
    goto :goto_c

    .line 342
    :cond_5
    move/from16 v2, v27

    .line 343
    .line 344
    mul-int/lit16 v2, v2, 0xbb8

    .line 345
    .line 346
    goto :goto_b

    .line 347
    :goto_a
    mul-int/lit16 v2, v2, 0x4e2

    .line 348
    .line 349
    :goto_b
    move-object/from16 v27, v14

    .line 350
    .line 351
    const/4 v7, 0x1

    .line 352
    goto :goto_f

    .line 353
    :goto_c
    new-instance v15, Ljava/lang/StringBuilder;

    .line 354
    .line 355
    move-object/from16 v27, v14

    .line 356
    .line 357
    const-string v14, "Unsupported profile "

    .line 358
    .line 359
    invoke-direct {v15, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 360
    .line 361
    .line 362
    iget v7, v7, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 363
    .line 364
    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 365
    .line 366
    .line 367
    invoke-virtual {v15, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 368
    .line 369
    .line 370
    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 371
    .line 372
    .line 373
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 374
    .line 375
    .line 376
    move-result-object v7

    .line 377
    invoke-static {v13, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    .line 379
    .line 380
    or-int/lit8 v22, v22, 0x2

    .line 381
    .line 382
    const/4 v7, 0x0

    .line 383
    goto :goto_e

    .line 384
    :goto_d
    const/4 v7, 0x1

    .line 385
    :goto_e
    mul-int/lit16 v2, v2, 0x3e8

    .line 386
    .line 387
    :goto_f
    if-eqz v7, :cond_6

    .line 388
    .line 389
    and-int/lit8 v7, v22, -0x5

    .line 390
    .line 391
    move/from16 v22, v7

    .line 392
    .line 393
    :cond_6
    int-to-long v14, v3

    .line 394
    invoke-static {v14, v15, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 395
    .line 396
    .line 397
    move-result-wide v8

    .line 398
    invoke-static {v11, v4}, Ljava/lang/Math;->max(II)I

    .line 399
    .line 400
    .line 401
    move-result v4

    .line 402
    invoke-static {v2, v6}, Ljava/lang/Math;->max(II)I

    .line 403
    .line 404
    .line 405
    move-result v6

    .line 406
    move/from16 v2, v23

    .line 407
    .line 408
    move/from16 v3, v28

    .line 409
    .line 410
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    .line 411
    .line 412
    .line 413
    move-result v23

    .line 414
    add-int/lit8 v5, v5, 0x1

    .line 415
    .line 416
    move/from16 v2, v25

    .line 417
    .line 418
    move-object/from16 v14, v27

    .line 419
    .line 420
    const/4 v11, 0x2

    .line 421
    const/4 v15, 0x1

    .line 422
    goto/16 :goto_0

    .line 423
    .line 424
    :cond_7
    move-object/from16 v27, v14

    .line 425
    .line 426
    mul-int/lit8 v0, v4, 0x8

    .line 427
    .line 428
    int-to-double v0, v0

    .line 429
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 430
    .line 431
    .line 432
    move-result-wide v0

    .line 433
    double-to-int v2, v0

    .line 434
    const/16 v7, 0x10

    .line 435
    .line 436
    const/16 v10, 0x10

    .line 437
    .line 438
    const/4 v11, 0x1

    .line 439
    const/4 v13, 0x1

    .line 440
    move-object/from16 v0, p0

    .line 441
    .line 442
    move v1, v2

    .line 443
    move v3, v4

    .line 444
    move-wide v4, v8

    .line 445
    move/from16 v19, v6

    .line 446
    .line 447
    move v6, v7

    .line 448
    move v7, v10

    .line 449
    move v8, v11

    .line 450
    move v9, v13

    .line 451
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 452
    .line 453
    .line 454
    move/from16 v6, v19

    .line 455
    .line 456
    goto/16 :goto_3b

    .line 457
    .line 458
    :cond_8
    move-object/from16 v27, v14

    .line 459
    .line 460
    const-string/jumbo v2, "video/mpeg2"

    .line 461
    .line 462
    .line 463
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 464
    .line 465
    .line 466
    move-result v2

    .line 467
    if-eqz v2, :cond_13

    .line 468
    .line 469
    array-length v2, v1

    .line 470
    const-wide/16 v14, 0x5cd

    .line 471
    .line 472
    const v9, 0xfa00

    .line 473
    .line 474
    .line 475
    const/16 v3, 0x63

    .line 476
    .line 477
    const/4 v4, 0x0

    .line 478
    const/16 v6, 0x9

    .line 479
    .line 480
    const/16 v7, 0xb

    .line 481
    .line 482
    const/16 v11, 0xf

    .line 483
    .line 484
    const/16 v22, 0x4

    .line 485
    .line 486
    :goto_10
    if-ge v4, v2, :cond_12

    .line 487
    .line 488
    aget-object v5, v1, v4

    .line 489
    .line 490
    iget v8, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 491
    .line 492
    if-eqz v8, :cond_f

    .line 493
    .line 494
    move/from16 v16, v2

    .line 495
    .line 496
    const/4 v2, 0x1

    .line 497
    if-eq v8, v2, :cond_a

    .line 498
    .line 499
    const/4 v2, 0x2

    .line 500
    if-eq v8, v2, :cond_9

    .line 501
    .line 502
    const/4 v2, 0x3

    .line 503
    if-eq v8, v2, :cond_9

    .line 504
    .line 505
    const/4 v2, 0x4

    .line 506
    if-eq v8, v2, :cond_9

    .line 507
    .line 508
    const/4 v2, 0x5

    .line 509
    if-eq v8, v2, :cond_9

    .line 510
    .line 511
    new-instance v2, Ljava/lang/StringBuilder;

    .line 512
    .line 513
    const-string v8, "Unrecognized profile "

    .line 514
    .line 515
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 516
    .line 517
    .line 518
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 519
    .line 520
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 521
    .line 522
    .line 523
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 524
    .line 525
    .line 526
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 527
    .line 528
    .line 529
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 530
    .line 531
    .line 532
    move-result-object v2

    .line 533
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 534
    .line 535
    .line 536
    :goto_11
    or-int/lit8 v22, v22, 0x1

    .line 537
    .line 538
    move-object/from16 v31, v1

    .line 539
    .line 540
    move-object/from16 v30, v10

    .line 541
    .line 542
    move-object/from16 v29, v13

    .line 543
    .line 544
    const/4 v1, 0x0

    .line 545
    const/4 v2, 0x0

    .line 546
    const/4 v5, 0x0

    .line 547
    const/4 v8, 0x0

    .line 548
    const/4 v10, 0x0

    .line 549
    const/4 v13, 0x0

    .line 550
    :goto_12
    const/16 v17, 0x1

    .line 551
    .line 552
    goto/16 :goto_15

    .line 553
    .line 554
    :cond_9
    new-instance v2, Ljava/lang/StringBuilder;

    .line 555
    .line 556
    const-string v8, "Unsupported profile "

    .line 557
    .line 558
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 559
    .line 560
    .line 561
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 562
    .line 563
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 564
    .line 565
    .line 566
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 570
    .line 571
    .line 572
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 573
    .line 574
    .line 575
    move-result-object v2

    .line 576
    invoke-static {v13, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    .line 578
    .line 579
    or-int/lit8 v22, v22, 0x2

    .line 580
    .line 581
    move-object/from16 v31, v1

    .line 582
    .line 583
    move-object/from16 v30, v10

    .line 584
    .line 585
    move-object/from16 v29, v13

    .line 586
    .line 587
    const/4 v1, 0x0

    .line 588
    const/4 v2, 0x0

    .line 589
    const/4 v5, 0x0

    .line 590
    const/4 v8, 0x0

    .line 591
    const/4 v10, 0x0

    .line 592
    const/4 v13, 0x0

    .line 593
    const/16 v17, 0x0

    .line 594
    .line 595
    goto/16 :goto_15

    .line 596
    .line 597
    :cond_a
    iget v2, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 598
    .line 599
    if-eqz v2, :cond_e

    .line 600
    .line 601
    const/4 v8, 0x1

    .line 602
    if-eq v2, v8, :cond_10

    .line 603
    .line 604
    const/4 v8, 0x2

    .line 605
    if-eq v2, v8, :cond_d

    .line 606
    .line 607
    const/4 v8, 0x3

    .line 608
    if-eq v2, v8, :cond_c

    .line 609
    .line 610
    const/4 v8, 0x4

    .line 611
    if-eq v2, v8, :cond_b

    .line 612
    .line 613
    new-instance v2, Ljava/lang/StringBuilder;

    .line 614
    .line 615
    const-string v8, "Unrecognized profile/level "

    .line 616
    .line 617
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 618
    .line 619
    .line 620
    iget v8, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 621
    .line 622
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 623
    .line 624
    .line 625
    const-string v8, "/"

    .line 626
    .line 627
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 628
    .line 629
    .line 630
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 631
    .line 632
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 633
    .line 634
    .line 635
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 636
    .line 637
    .line 638
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 639
    .line 640
    .line 641
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 642
    .line 643
    .line 644
    move-result-object v2

    .line 645
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    .line 647
    .line 648
    goto :goto_11

    .line 649
    :cond_b
    const/16 v2, 0x3c

    .line 650
    .line 651
    const/16 v5, 0x78

    .line 652
    .line 653
    const/16 v8, 0x44

    .line 654
    .line 655
    const v17, 0x77880

    .line 656
    .line 657
    .line 658
    goto :goto_13

    .line 659
    :cond_c
    const/16 v2, 0x3c

    .line 660
    .line 661
    const/16 v5, 0x78

    .line 662
    .line 663
    const/16 v8, 0x44

    .line 664
    .line 665
    const v17, 0x3bc40

    .line 666
    .line 667
    .line 668
    :goto_13
    const/16 v19, 0x1fe0

    .line 669
    .line 670
    const v21, 0x13880

    .line 671
    .line 672
    .line 673
    goto :goto_14

    .line 674
    :cond_d
    const/16 v2, 0x3c

    .line 675
    .line 676
    const/16 v5, 0x5a

    .line 677
    .line 678
    const/16 v8, 0x44

    .line 679
    .line 680
    const v17, 0x2cd30

    .line 681
    .line 682
    .line 683
    const/16 v19, 0x17e8

    .line 684
    .line 685
    const v21, 0xea60

    .line 686
    .line 687
    .line 688
    :goto_14
    move-object/from16 v31, v1

    .line 689
    .line 690
    move-object/from16 v30, v10

    .line 691
    .line 692
    move-object/from16 v29, v13

    .line 693
    .line 694
    move/from16 v13, v17

    .line 695
    .line 696
    move/from16 v10, v19

    .line 697
    .line 698
    move/from16 v1, v21

    .line 699
    .line 700
    goto/16 :goto_12

    .line 701
    .line 702
    :cond_e
    const/16 v21, 0xfa0

    .line 703
    .line 704
    move-object/from16 v31, v1

    .line 705
    .line 706
    move-object/from16 v30, v10

    .line 707
    .line 708
    move-object/from16 v29, v13

    .line 709
    .line 710
    move/from16 v1, v21

    .line 711
    .line 712
    const/16 v2, 0x1e

    .line 713
    .line 714
    const/16 v5, 0x16

    .line 715
    .line 716
    const/16 v8, 0x12

    .line 717
    .line 718
    const/16 v10, 0x18c

    .line 719
    .line 720
    const/16 v13, 0x2e68

    .line 721
    .line 722
    goto/16 :goto_12

    .line 723
    .line 724
    :cond_f
    move/from16 v16, v2

    .line 725
    .line 726
    iget v2, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 727
    .line 728
    const/4 v8, 0x1

    .line 729
    if-eq v2, v8, :cond_10

    .line 730
    .line 731
    new-instance v2, Ljava/lang/StringBuilder;

    .line 732
    .line 733
    const-string v8, "Unrecognized profile/level "

    .line 734
    .line 735
    invoke-direct {v2, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 736
    .line 737
    .line 738
    iget v8, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 739
    .line 740
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 741
    .line 742
    .line 743
    const-string v8, "/"

    .line 744
    .line 745
    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 746
    .line 747
    .line 748
    iget v5, v5, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 749
    .line 750
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 751
    .line 752
    .line 753
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 754
    .line 755
    .line 756
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 757
    .line 758
    .line 759
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 760
    .line 761
    .line 762
    move-result-object v2

    .line 763
    invoke-static {v13, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 764
    .line 765
    .line 766
    goto/16 :goto_11

    .line 767
    .line 768
    :cond_10
    const/16 v5, 0x2d

    .line 769
    .line 770
    const/16 v8, 0x24

    .line 771
    .line 772
    const v17, 0x9e34

    .line 773
    .line 774
    .line 775
    const/16 v19, 0x654

    .line 776
    .line 777
    const/16 v21, 0x3a98

    .line 778
    .line 779
    move-object/from16 v31, v1

    .line 780
    .line 781
    move-object/from16 v30, v10

    .line 782
    .line 783
    move-object/from16 v29, v13

    .line 784
    .line 785
    move/from16 v13, v17

    .line 786
    .line 787
    move/from16 v10, v19

    .line 788
    .line 789
    move/from16 v1, v21

    .line 790
    .line 791
    const/16 v2, 0x1e

    .line 792
    .line 793
    goto/16 :goto_12

    .line 794
    .line 795
    :goto_15
    if-eqz v17, :cond_11

    .line 796
    .line 797
    and-int/lit8 v17, v22, -0x5

    .line 798
    .line 799
    move/from16 v22, v17

    .line 800
    .line 801
    :cond_11
    int-to-long v12, v13

    .line 802
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->max(JJ)J

    .line 803
    .line 804
    .line 805
    move-result-wide v14

    .line 806
    invoke-static {v10, v3}, Ljava/lang/Math;->max(II)I

    .line 807
    .line 808
    .line 809
    move-result v3

    .line 810
    mul-int/lit16 v1, v1, 0x3e8

    .line 811
    .line 812
    invoke-static {v1, v9}, Ljava/lang/Math;->max(II)I

    .line 813
    .line 814
    .line 815
    move-result v9

    .line 816
    invoke-static {v5, v7}, Ljava/lang/Math;->max(II)I

    .line 817
    .line 818
    .line 819
    move-result v7

    .line 820
    invoke-static {v8, v6}, Ljava/lang/Math;->max(II)I

    .line 821
    .line 822
    .line 823
    move-result v6

    .line 824
    invoke-static {v2, v11}, Ljava/lang/Math;->max(II)I

    .line 825
    .line 826
    .line 827
    move-result v11

    .line 828
    add-int/lit8 v4, v4, 0x1

    .line 829
    .line 830
    move-object/from16 v12, p0

    .line 831
    .line 832
    move/from16 v2, v16

    .line 833
    .line 834
    move-object/from16 v13, v29

    .line 835
    .line 836
    move-object/from16 v10, v30

    .line 837
    .line 838
    move-object/from16 v1, v31

    .line 839
    .line 840
    goto/16 :goto_10

    .line 841
    .line 842
    :cond_12
    const/16 v8, 0x10

    .line 843
    .line 844
    const/16 v10, 0x10

    .line 845
    .line 846
    const/4 v12, 0x1

    .line 847
    const/4 v13, 0x1

    .line 848
    move-object/from16 v0, p0

    .line 849
    .line 850
    move v1, v7

    .line 851
    move v2, v6

    .line 852
    move-wide v4, v14

    .line 853
    move v6, v8

    .line 854
    move v7, v10

    .line 855
    move v8, v12

    .line 856
    move v10, v9

    .line 857
    move v9, v13

    .line 858
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 859
    .line 860
    .line 861
    move-object/from16 v12, p0

    .line 862
    .line 863
    iget-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 864
    .line 865
    const/16 v1, 0xc

    .line 866
    .line 867
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 868
    .line 869
    .line 870
    move-result-object v1

    .line 871
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 872
    .line 873
    .line 874
    move-result-object v2

    .line 875
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 876
    .line 877
    .line 878
    move-result-object v0

    .line 879
    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 880
    .line 881
    move v6, v10

    .line 882
    goto/16 :goto_3b

    .line 883
    .line 884
    :cond_13
    move-object/from16 v31, v1

    .line 885
    .line 886
    move-object/from16 v30, v10

    .line 887
    .line 888
    move-object/from16 v29, v13

    .line 889
    .line 890
    const-string/jumbo v1, "video/mp4v-es"

    .line 891
    .line 892
    .line 893
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 894
    .line 895
    .line 896
    move-result v1

    .line 897
    if-eqz v1, :cond_27

    .line 898
    .line 899
    move-object/from16 v1, v31

    .line 900
    .line 901
    array-length v2, v1

    .line 902
    const-wide/16 v4, 0x5cd

    .line 903
    .line 904
    const v8, 0xfa00

    .line 905
    .line 906
    .line 907
    move-wide v9, v4

    .line 908
    move v11, v8

    .line 909
    const/16 v4, 0xb

    .line 910
    .line 911
    const/16 v5, 0x9

    .line 912
    .line 913
    const/16 v8, 0x63

    .line 914
    .line 915
    const/4 v13, 0x0

    .line 916
    const/16 v14, 0xf

    .line 917
    .line 918
    const/16 v22, 0x4

    .line 919
    .line 920
    :goto_16
    if-ge v13, v2, :cond_26

    .line 921
    .line 922
    aget-object v15, v1, v13

    .line 923
    .line 924
    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 925
    .line 926
    const/4 v6, 0x1

    .line 927
    if-eq v3, v6, :cond_1b

    .line 928
    .line 929
    const/4 v6, 0x2

    .line 930
    if-eq v3, v6, :cond_1a

    .line 931
    .line 932
    sparse-switch v3, :sswitch_data_1

    .line 933
    .line 934
    .line 935
    new-instance v3, Ljava/lang/StringBuilder;

    .line 936
    .line 937
    const-string v6, "Unrecognized profile "

    .line 938
    .line 939
    invoke-direct {v3, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 940
    .line 941
    .line 942
    iget v6, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 943
    .line 944
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 945
    .line 946
    .line 947
    move-object/from16 v6, v30

    .line 948
    .line 949
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 950
    .line 951
    .line 952
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 953
    .line 954
    .line 955
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 956
    .line 957
    .line 958
    move-result-object v3

    .line 959
    move-object/from16 v15, v29

    .line 960
    .line 961
    invoke-static {v15, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 962
    .line 963
    .line 964
    or-int/lit8 v22, v22, 0x1

    .line 965
    .line 966
    move-object/from16 v36, v1

    .line 967
    .line 968
    move/from16 v30, v2

    .line 969
    .line 970
    move-object/from16 v35, v6

    .line 971
    .line 972
    move-object/from16 v32, v15

    .line 973
    .line 974
    :goto_17
    const/4 v1, 0x0

    .line 975
    const/4 v2, 0x0

    .line 976
    const/4 v3, 0x0

    .line 977
    const/4 v6, 0x0

    .line 978
    const/4 v7, 0x0

    .line 979
    const/4 v15, 0x0

    .line 980
    :goto_18
    const/16 v33, 0x1

    .line 981
    .line 982
    goto/16 :goto_19

    .line 983
    .line 984
    :sswitch_f
    move-object/from16 v3, v29

    .line 985
    .line 986
    move-object/from16 v6, v30

    .line 987
    .line 988
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 989
    .line 990
    move/from16 v30, v2

    .line 991
    .line 992
    const/4 v2, 0x1

    .line 993
    if-eq v7, v2, :cond_19

    .line 994
    .line 995
    const/4 v2, 0x4

    .line 996
    if-eq v7, v2, :cond_19

    .line 997
    .line 998
    const/16 v2, 0x8

    .line 999
    .line 1000
    if-eq v7, v2, :cond_18

    .line 1001
    .line 1002
    const/16 v2, 0x10

    .line 1003
    .line 1004
    if-eq v7, v2, :cond_17

    .line 1005
    .line 1006
    const/16 v2, 0x18

    .line 1007
    .line 1008
    if-eq v7, v2, :cond_16

    .line 1009
    .line 1010
    const/16 v2, 0x20

    .line 1011
    .line 1012
    if-eq v7, v2, :cond_15

    .line 1013
    .line 1014
    const/16 v2, 0x80

    .line 1015
    .line 1016
    if-eq v7, v2, :cond_14

    .line 1017
    .line 1018
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1019
    .line 1020
    const-string v7, "Unrecognized profile/level "

    .line 1021
    .line 1022
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1023
    .line 1024
    .line 1025
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1026
    .line 1027
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1028
    .line 1029
    .line 1030
    const-string v7, "/"

    .line 1031
    .line 1032
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1033
    .line 1034
    .line 1035
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1036
    .line 1037
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1038
    .line 1039
    .line 1040
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1041
    .line 1042
    .line 1043
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1044
    .line 1045
    .line 1046
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1047
    .line 1048
    .line 1049
    move-result-object v2

    .line 1050
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1051
    .line 1052
    .line 1053
    goto/16 :goto_1a

    .line 1054
    .line 1055
    :cond_14
    const/16 v2, 0x2d

    .line 1056
    .line 1057
    const/16 v7, 0x24

    .line 1058
    .line 1059
    const v15, 0xbdd8

    .line 1060
    .line 1061
    .line 1062
    goto/16 :goto_1b

    .line 1063
    .line 1064
    :cond_15
    const/16 v2, 0x2c

    .line 1065
    .line 1066
    const/16 v7, 0x24

    .line 1067
    .line 1068
    const/16 v15, 0x5cd0

    .line 1069
    .line 1070
    const/16 v32, 0x318

    .line 1071
    .line 1072
    const/16 v33, 0xbb8

    .line 1073
    .line 1074
    goto/16 :goto_1c

    .line 1075
    .line 1076
    :cond_16
    const/16 v2, 0x5dc

    .line 1077
    .line 1078
    goto/16 :goto_1d

    .line 1079
    .line 1080
    :cond_17
    const/16 v2, 0x300

    .line 1081
    .line 1082
    goto/16 :goto_1d

    .line 1083
    .line 1084
    :cond_18
    const/16 v15, 0x1734

    .line 1085
    .line 1086
    const/16 v2, 0x180

    .line 1087
    .line 1088
    move-object/from16 v36, v1

    .line 1089
    .line 1090
    move-object/from16 v32, v3

    .line 1091
    .line 1092
    move-object/from16 v35, v6

    .line 1093
    .line 1094
    const/16 v1, 0x1e

    .line 1095
    .line 1096
    const/16 v6, 0x18c

    .line 1097
    .line 1098
    const/16 v7, 0x12

    .line 1099
    .line 1100
    goto/16 :goto_1e

    .line 1101
    .line 1102
    :cond_19
    const/16 v15, 0xb9a

    .line 1103
    .line 1104
    move-object/from16 v36, v1

    .line 1105
    .line 1106
    move-object/from16 v32, v3

    .line 1107
    .line 1108
    move-object/from16 v35, v6

    .line 1109
    .line 1110
    const/16 v1, 0x1e

    .line 1111
    .line 1112
    const/16 v2, 0xb

    .line 1113
    .line 1114
    const/16 v3, 0x80

    .line 1115
    .line 1116
    const/16 v6, 0x63

    .line 1117
    .line 1118
    const/16 v7, 0x9

    .line 1119
    .line 1120
    goto/16 :goto_18

    .line 1121
    .line 1122
    :cond_1a
    :sswitch_10
    move-object/from16 v3, v29

    .line 1123
    .line 1124
    move-object/from16 v6, v30

    .line 1125
    .line 1126
    move/from16 v30, v2

    .line 1127
    .line 1128
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1129
    .line 1130
    const-string v7, "Unsupported profile "

    .line 1131
    .line 1132
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1133
    .line 1134
    .line 1135
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1136
    .line 1137
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1138
    .line 1139
    .line 1140
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1141
    .line 1142
    .line 1143
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1144
    .line 1145
    .line 1146
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1147
    .line 1148
    .line 1149
    move-result-object v2

    .line 1150
    invoke-static {v3, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1151
    .line 1152
    .line 1153
    or-int/lit8 v22, v22, 0x2

    .line 1154
    .line 1155
    move-object/from16 v36, v1

    .line 1156
    .line 1157
    move-object/from16 v32, v3

    .line 1158
    .line 1159
    move-object/from16 v35, v6

    .line 1160
    .line 1161
    const/4 v1, 0x0

    .line 1162
    const/4 v2, 0x0

    .line 1163
    const/4 v3, 0x0

    .line 1164
    const/4 v6, 0x0

    .line 1165
    const/4 v7, 0x0

    .line 1166
    const/4 v15, 0x0

    .line 1167
    const/16 v33, 0x0

    .line 1168
    .line 1169
    :goto_19
    const/16 v34, 0x0

    .line 1170
    .line 1171
    goto/16 :goto_20

    .line 1172
    .line 1173
    :cond_1b
    move-object/from16 v3, v29

    .line 1174
    .line 1175
    move-object/from16 v6, v30

    .line 1176
    .line 1177
    move/from16 v30, v2

    .line 1178
    .line 1179
    iget v2, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1180
    .line 1181
    const/4 v7, 0x1

    .line 1182
    if-eq v2, v7, :cond_23

    .line 1183
    .line 1184
    const/4 v7, 0x2

    .line 1185
    if-eq v2, v7, :cond_22

    .line 1186
    .line 1187
    const/4 v7, 0x4

    .line 1188
    if-eq v2, v7, :cond_21

    .line 1189
    .line 1190
    const/16 v7, 0x8

    .line 1191
    .line 1192
    if-eq v2, v7, :cond_20

    .line 1193
    .line 1194
    const/16 v7, 0x10

    .line 1195
    .line 1196
    if-eq v2, v7, :cond_1f

    .line 1197
    .line 1198
    const/16 v7, 0x40

    .line 1199
    .line 1200
    if-eq v2, v7, :cond_1e

    .line 1201
    .line 1202
    const/16 v7, 0x80

    .line 1203
    .line 1204
    if-eq v2, v7, :cond_1d

    .line 1205
    .line 1206
    const/16 v7, 0x100

    .line 1207
    .line 1208
    if-eq v2, v7, :cond_1c

    .line 1209
    .line 1210
    new-instance v2, Ljava/lang/StringBuilder;

    .line 1211
    .line 1212
    const-string v7, "Unrecognized profile/level "

    .line 1213
    .line 1214
    invoke-direct {v2, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1215
    .line 1216
    .line 1217
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1218
    .line 1219
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1220
    .line 1221
    .line 1222
    const-string v7, "/"

    .line 1223
    .line 1224
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1225
    .line 1226
    .line 1227
    iget v7, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1228
    .line 1229
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1230
    .line 1231
    .line 1232
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1233
    .line 1234
    .line 1235
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1236
    .line 1237
    .line 1238
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1239
    .line 1240
    .line 1241
    move-result-object v2

    .line 1242
    invoke-static {v3, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1243
    .line 1244
    .line 1245
    :goto_1a
    or-int/lit8 v22, v22, 0x1

    .line 1246
    .line 1247
    move-object/from16 v36, v1

    .line 1248
    .line 1249
    move-object/from16 v32, v3

    .line 1250
    .line 1251
    move-object/from16 v35, v6

    .line 1252
    .line 1253
    goto/16 :goto_17

    .line 1254
    .line 1255
    :cond_1c
    const/16 v2, 0x50

    .line 1256
    .line 1257
    const/16 v7, 0x2d

    .line 1258
    .line 1259
    const v15, 0x1a5e0

    .line 1260
    .line 1261
    .line 1262
    const/16 v32, 0xe10

    .line 1263
    .line 1264
    const/16 v33, 0x2ee0

    .line 1265
    .line 1266
    goto :goto_1c

    .line 1267
    :cond_1d
    const/16 v2, 0x2d

    .line 1268
    .line 1269
    const/16 v7, 0x24

    .line 1270
    .line 1271
    const v15, 0x9e34

    .line 1272
    .line 1273
    .line 1274
    :goto_1b
    const/16 v32, 0x654

    .line 1275
    .line 1276
    const/16 v33, 0x1f40

    .line 1277
    .line 1278
    :goto_1c
    move-object/from16 v36, v1

    .line 1279
    .line 1280
    move-object/from16 v35, v6

    .line 1281
    .line 1282
    move/from16 v6, v32

    .line 1283
    .line 1284
    const/16 v1, 0x1e

    .line 1285
    .line 1286
    const/16 v34, 0x0

    .line 1287
    .line 1288
    move-object/from16 v32, v3

    .line 1289
    .line 1290
    move/from16 v3, v33

    .line 1291
    .line 1292
    const/16 v33, 0x1

    .line 1293
    .line 1294
    goto/16 :goto_20

    .line 1295
    .line 1296
    :cond_1e
    const/16 v2, 0x28

    .line 1297
    .line 1298
    const v15, 0x8ca0

    .line 1299
    .line 1300
    .line 1301
    const/16 v32, 0x4b0

    .line 1302
    .line 1303
    const/16 v7, 0xfa0

    .line 1304
    .line 1305
    move-object/from16 v36, v1

    .line 1306
    .line 1307
    move-object/from16 v35, v6

    .line 1308
    .line 1309
    move/from16 v6, v32

    .line 1310
    .line 1311
    const/16 v1, 0x1e

    .line 1312
    .line 1313
    const/16 v33, 0x1

    .line 1314
    .line 1315
    const/16 v34, 0x0

    .line 1316
    .line 1317
    move-object/from16 v32, v3

    .line 1318
    .line 1319
    move v3, v7

    .line 1320
    const/16 v7, 0x1e

    .line 1321
    .line 1322
    goto :goto_20

    .line 1323
    :cond_1f
    const/16 v2, 0x180

    .line 1324
    .line 1325
    :goto_1d
    move-object/from16 v36, v1

    .line 1326
    .line 1327
    move-object/from16 v32, v3

    .line 1328
    .line 1329
    move-object/from16 v35, v6

    .line 1330
    .line 1331
    const/16 v1, 0x1e

    .line 1332
    .line 1333
    const/16 v6, 0x18c

    .line 1334
    .line 1335
    const/16 v7, 0x12

    .line 1336
    .line 1337
    const/16 v15, 0x2e68

    .line 1338
    .line 1339
    :goto_1e
    const/16 v33, 0x1

    .line 1340
    .line 1341
    const/16 v34, 0x0

    .line 1342
    .line 1343
    move v3, v2

    .line 1344
    const/16 v2, 0x16

    .line 1345
    .line 1346
    goto :goto_20

    .line 1347
    :cond_20
    const/16 v15, 0x1734

    .line 1348
    .line 1349
    move-object/from16 v36, v1

    .line 1350
    .line 1351
    move-object/from16 v32, v3

    .line 1352
    .line 1353
    move-object/from16 v35, v6

    .line 1354
    .line 1355
    const/16 v1, 0x1e

    .line 1356
    .line 1357
    const/16 v2, 0x16

    .line 1358
    .line 1359
    const/16 v3, 0x80

    .line 1360
    .line 1361
    const/16 v6, 0x18c

    .line 1362
    .line 1363
    const/16 v7, 0x12

    .line 1364
    .line 1365
    goto/16 :goto_18

    .line 1366
    .line 1367
    :cond_21
    move-object/from16 v36, v1

    .line 1368
    .line 1369
    move-object/from16 v32, v3

    .line 1370
    .line 1371
    move-object/from16 v35, v6

    .line 1372
    .line 1373
    const/16 v1, 0x1e

    .line 1374
    .line 1375
    const/16 v2, 0xb

    .line 1376
    .line 1377
    const/16 v3, 0x40

    .line 1378
    .line 1379
    const/16 v6, 0x63

    .line 1380
    .line 1381
    const/16 v7, 0x9

    .line 1382
    .line 1383
    const/16 v15, 0x5cd

    .line 1384
    .line 1385
    goto/16 :goto_18

    .line 1386
    .line 1387
    :cond_22
    move-object/from16 v36, v1

    .line 1388
    .line 1389
    move-object/from16 v32, v3

    .line 1390
    .line 1391
    move-object/from16 v35, v6

    .line 1392
    .line 1393
    const/16 v1, 0xf

    .line 1394
    .line 1395
    const/16 v2, 0xb

    .line 1396
    .line 1397
    const/16 v3, 0x80

    .line 1398
    .line 1399
    goto :goto_1f

    .line 1400
    :cond_23
    move-object/from16 v36, v1

    .line 1401
    .line 1402
    move-object/from16 v32, v3

    .line 1403
    .line 1404
    move-object/from16 v35, v6

    .line 1405
    .line 1406
    const/16 v1, 0xf

    .line 1407
    .line 1408
    const/16 v2, 0xb

    .line 1409
    .line 1410
    const/16 v3, 0x40

    .line 1411
    .line 1412
    :goto_1f
    const/16 v6, 0x63

    .line 1413
    .line 1414
    const/16 v7, 0x9

    .line 1415
    .line 1416
    const/16 v15, 0x5cd

    .line 1417
    .line 1418
    const/16 v33, 0x1

    .line 1419
    .line 1420
    const/16 v34, 0x1

    .line 1421
    .line 1422
    :goto_20
    if-eqz v33, :cond_24

    .line 1423
    .line 1424
    and-int/lit8 v22, v22, -0x5

    .line 1425
    .line 1426
    :cond_24
    move/from16 v33, v13

    .line 1427
    .line 1428
    int-to-long v12, v15

    .line 1429
    invoke-static {v12, v13, v9, v10}, Ljava/lang/Math;->max(JJ)J

    .line 1430
    .line 1431
    .line 1432
    move-result-wide v9

    .line 1433
    invoke-static {v6, v8}, Ljava/lang/Math;->max(II)I

    .line 1434
    .line 1435
    .line 1436
    move-result v8

    .line 1437
    mul-int/lit16 v3, v3, 0x3e8

    .line 1438
    .line 1439
    invoke-static {v3, v11}, Ljava/lang/Math;->max(II)I

    .line 1440
    .line 1441
    .line 1442
    move-result v11

    .line 1443
    if-eqz v34, :cond_25

    .line 1444
    .line 1445
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 1446
    .line 1447
    .line 1448
    move-result v2

    .line 1449
    invoke-static {v7, v5}, Ljava/lang/Math;->max(II)I

    .line 1450
    .line 1451
    .line 1452
    move-result v3

    .line 1453
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 1454
    .line 1455
    .line 1456
    move-result v1

    .line 1457
    move v14, v1

    .line 1458
    move v4, v2

    .line 1459
    move v5, v3

    .line 1460
    goto :goto_21

    .line 1461
    :cond_25
    mul-int/lit8 v6, v6, 0x2

    .line 1462
    .line 1463
    int-to-double v2, v6

    .line 1464
    invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D

    .line 1465
    .line 1466
    .line 1467
    move-result-wide v2

    .line 1468
    double-to-int v2, v2

    .line 1469
    invoke-static {v2, v4}, Ljava/lang/Math;->max(II)I

    .line 1470
    .line 1471
    .line 1472
    move-result v3

    .line 1473
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 1474
    .line 1475
    .line 1476
    move-result v2

    .line 1477
    const/16 v4, 0x3c

    .line 1478
    .line 1479
    invoke-static {v1, v4}, Ljava/lang/Math;->max(II)I

    .line 1480
    .line 1481
    .line 1482
    move-result v1

    .line 1483
    invoke-static {v1, v14}, Ljava/lang/Math;->max(II)I

    .line 1484
    .line 1485
    .line 1486
    move-result v1

    .line 1487
    move v14, v1

    .line 1488
    move v5, v2

    .line 1489
    move v4, v3

    .line 1490
    :goto_21
    add-int/lit8 v13, v33, 0x1

    .line 1491
    .line 1492
    move-object/from16 v12, p0

    .line 1493
    .line 1494
    move/from16 v2, v30

    .line 1495
    .line 1496
    move-object/from16 v29, v32

    .line 1497
    .line 1498
    move-object/from16 v30, v35

    .line 1499
    .line 1500
    move-object/from16 v1, v36

    .line 1501
    .line 1502
    goto/16 :goto_16

    .line 1503
    .line 1504
    :cond_26
    const/16 v6, 0x10

    .line 1505
    .line 1506
    const/16 v7, 0x10

    .line 1507
    .line 1508
    const/4 v12, 0x1

    .line 1509
    const/4 v13, 0x1

    .line 1510
    move-object/from16 v0, p0

    .line 1511
    .line 1512
    move v1, v4

    .line 1513
    move v2, v5

    .line 1514
    move v3, v8

    .line 1515
    move-wide v4, v9

    .line 1516
    move v8, v12

    .line 1517
    move v9, v13

    .line 1518
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 1519
    .line 1520
    .line 1521
    move-object/from16 v12, p0

    .line 1522
    .line 1523
    iget-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1524
    .line 1525
    const/16 v1, 0xc

    .line 1526
    .line 1527
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1528
    .line 1529
    .line 1530
    move-result-object v1

    .line 1531
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 1532
    .line 1533
    .line 1534
    move-result-object v2

    .line 1535
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 1536
    .line 1537
    .line 1538
    move-result-object v0

    .line 1539
    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 1540
    .line 1541
    move v6, v11

    .line 1542
    goto/16 :goto_3b

    .line 1543
    .line 1544
    :cond_27
    move-object/from16 v32, v29

    .line 1545
    .line 1546
    move-object/from16 v35, v30

    .line 1547
    .line 1548
    move-object/from16 v36, v31

    .line 1549
    .line 1550
    const-string/jumbo v1, "video/3gpp"

    .line 1551
    .line 1552
    .line 1553
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 1554
    .line 1555
    .line 1556
    move-result v1

    .line 1557
    if-eqz v1, :cond_37

    .line 1558
    .line 1559
    move-object/from16 v1, v36

    .line 1560
    .line 1561
    array-length v2, v1

    .line 1562
    const/16 v3, 0x10

    .line 1563
    .line 1564
    const-wide/16 v4, 0x5cd

    .line 1565
    .line 1566
    const v6, 0xfa00

    .line 1567
    .line 1568
    .line 1569
    move v11, v3

    .line 1570
    move-wide v8, v4

    .line 1571
    move v13, v6

    .line 1572
    const/16 v3, 0xb

    .line 1573
    .line 1574
    const/16 v4, 0x9

    .line 1575
    .line 1576
    const/16 v5, 0xb

    .line 1577
    .line 1578
    const/16 v6, 0x9

    .line 1579
    .line 1580
    const/16 v7, 0x63

    .line 1581
    .line 1582
    const/4 v10, 0x0

    .line 1583
    const/16 v14, 0xf

    .line 1584
    .line 1585
    const/16 v22, 0x4

    .line 1586
    .line 1587
    :goto_22
    if-ge v10, v2, :cond_35

    .line 1588
    .line 1589
    aget-object v15, v1, v10

    .line 1590
    .line 1591
    move/from16 v17, v2

    .line 1592
    .line 1593
    iget v2, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1594
    .line 1595
    move-object/from16 v36, v1

    .line 1596
    .line 1597
    const/4 v1, 0x1

    .line 1598
    if-eq v2, v1, :cond_32

    .line 1599
    .line 1600
    const/4 v1, 0x2

    .line 1601
    if-eq v2, v1, :cond_31

    .line 1602
    .line 1603
    const/4 v1, 0x4

    .line 1604
    if-eq v2, v1, :cond_30

    .line 1605
    .line 1606
    const/16 v1, 0x8

    .line 1607
    .line 1608
    if-eq v2, v1, :cond_2f

    .line 1609
    .line 1610
    const/16 v1, 0x10

    .line 1611
    .line 1612
    if-eq v2, v1, :cond_2b

    .line 1613
    .line 1614
    const/16 v1, 0x20

    .line 1615
    .line 1616
    if-eq v2, v1, :cond_2a

    .line 1617
    .line 1618
    const/16 v1, 0x40

    .line 1619
    .line 1620
    if-eq v2, v1, :cond_29

    .line 1621
    .line 1622
    const/16 v1, 0x80

    .line 1623
    .line 1624
    if-eq v2, v1, :cond_28

    .line 1625
    .line 1626
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1627
    .line 1628
    const-string v2, "Unrecognized profile/level "

    .line 1629
    .line 1630
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1631
    .line 1632
    .line 1633
    iget v2, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1634
    .line 1635
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1636
    .line 1637
    .line 1638
    const-string v2, "/"

    .line 1639
    .line 1640
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1641
    .line 1642
    .line 1643
    iget v2, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 1644
    .line 1645
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1646
    .line 1647
    .line 1648
    move-object/from16 v2, v35

    .line 1649
    .line 1650
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1651
    .line 1652
    .line 1653
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1654
    .line 1655
    .line 1656
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1657
    .line 1658
    .line 1659
    move-result-object v1

    .line 1660
    move/from16 v18, v11

    .line 1661
    .line 1662
    move-object/from16 v11, v32

    .line 1663
    .line 1664
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1665
    .line 1666
    .line 1667
    or-int/lit8 v22, v22, 0x1

    .line 1668
    .line 1669
    move/from16 v34, v3

    .line 1670
    .line 1671
    move/from16 v38, v34

    .line 1672
    .line 1673
    move/from16 v35, v4

    .line 1674
    .line 1675
    move/from16 v37, v35

    .line 1676
    .line 1677
    move/from16 v30, v10

    .line 1678
    .line 1679
    const/4 v3, 0x0

    .line 1680
    const/4 v4, 0x0

    .line 1681
    const/4 v10, 0x0

    .line 1682
    const/16 v32, 0x0

    .line 1683
    .line 1684
    const/16 v33, 0x0

    .line 1685
    .line 1686
    const/16 v39, 0x0

    .line 1687
    .line 1688
    goto/16 :goto_2a

    .line 1689
    .line 1690
    :cond_28
    move-object/from16 v11, v32

    .line 1691
    .line 1692
    move-object/from16 v2, v35

    .line 1693
    .line 1694
    const/16 v1, 0x3c

    .line 1695
    .line 1696
    const/16 v18, 0x2d

    .line 1697
    .line 1698
    const/16 v30, 0x24

    .line 1699
    .line 1700
    const/16 v32, 0x100

    .line 1701
    .line 1702
    const v33, 0x13c68

    .line 1703
    .line 1704
    .line 1705
    move/from16 v39, v1

    .line 1706
    .line 1707
    move/from16 v38, v3

    .line 1708
    .line 1709
    move/from16 v37, v4

    .line 1710
    .line 1711
    move/from16 v4, v30

    .line 1712
    .line 1713
    move/from16 v3, v33

    .line 1714
    .line 1715
    const/16 v33, 0x0

    .line 1716
    .line 1717
    const/16 v34, 0x1

    .line 1718
    .line 1719
    const/16 v35, 0x1

    .line 1720
    .line 1721
    move/from16 v30, v10

    .line 1722
    .line 1723
    move/from16 v10, v18

    .line 1724
    .line 1725
    const/16 v18, 0x4

    .line 1726
    .line 1727
    goto/16 :goto_2a

    .line 1728
    .line 1729
    :cond_29
    move-object/from16 v11, v32

    .line 1730
    .line 1731
    move-object/from16 v2, v35

    .line 1732
    .line 1733
    const/16 v1, 0x3c

    .line 1734
    .line 1735
    const/16 v18, 0x2d

    .line 1736
    .line 1737
    const v33, 0x9e34

    .line 1738
    .line 1739
    .line 1740
    move/from16 v39, v1

    .line 1741
    .line 1742
    move/from16 v38, v3

    .line 1743
    .line 1744
    move/from16 v37, v4

    .line 1745
    .line 1746
    move/from16 v30, v10

    .line 1747
    .line 1748
    move/from16 v10, v18

    .line 1749
    .line 1750
    move/from16 v3, v33

    .line 1751
    .line 1752
    const/16 v4, 0x12

    .line 1753
    .line 1754
    const/16 v18, 0x4

    .line 1755
    .line 1756
    const/16 v32, 0x80

    .line 1757
    .line 1758
    goto :goto_23

    .line 1759
    :cond_2a
    move-object/from16 v11, v32

    .line 1760
    .line 1761
    move-object/from16 v2, v35

    .line 1762
    .line 1763
    const/16 v1, 0x3c

    .line 1764
    .line 1765
    const/16 v33, 0x4d58

    .line 1766
    .line 1767
    move/from16 v39, v1

    .line 1768
    .line 1769
    move/from16 v38, v3

    .line 1770
    .line 1771
    move/from16 v37, v4

    .line 1772
    .line 1773
    move/from16 v30, v10

    .line 1774
    .line 1775
    move/from16 v3, v33

    .line 1776
    .line 1777
    const/16 v4, 0x12

    .line 1778
    .line 1779
    const/16 v10, 0x16

    .line 1780
    .line 1781
    const/16 v18, 0x4

    .line 1782
    .line 1783
    const/16 v32, 0x40

    .line 1784
    .line 1785
    :goto_23
    const/16 v33, 0x0

    .line 1786
    .line 1787
    const/16 v34, 0x1

    .line 1788
    .line 1789
    const/16 v35, 0x1

    .line 1790
    .line 1791
    goto/16 :goto_2a

    .line 1792
    .line 1793
    :cond_2b
    move/from16 v18, v11

    .line 1794
    .line 1795
    move-object/from16 v11, v32

    .line 1796
    .line 1797
    move-object/from16 v2, v35

    .line 1798
    .line 1799
    iget v1, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1800
    .line 1801
    move/from16 v30, v10

    .line 1802
    .line 1803
    const/4 v10, 0x1

    .line 1804
    if-eq v1, v10, :cond_2d

    .line 1805
    .line 1806
    const/4 v10, 0x4

    .line 1807
    if-ne v1, v10, :cond_2c

    .line 1808
    .line 1809
    goto :goto_24

    .line 1810
    :cond_2c
    const/4 v1, 0x0

    .line 1811
    goto :goto_25

    .line 1812
    :cond_2d
    :goto_24
    const/4 v1, 0x1

    .line 1813
    :goto_25
    if-nez v1, :cond_2e

    .line 1814
    .line 1815
    const/4 v10, 0x1

    .line 1816
    const/16 v18, 0x4

    .line 1817
    .line 1818
    const/16 v32, 0x1

    .line 1819
    .line 1820
    goto :goto_26

    .line 1821
    :cond_2e
    move v10, v3

    .line 1822
    move/from16 v32, v4

    .line 1823
    .line 1824
    :goto_26
    move/from16 v33, v1

    .line 1825
    .line 1826
    move/from16 v38, v3

    .line 1827
    .line 1828
    move/from16 v37, v4

    .line 1829
    .line 1830
    move/from16 v34, v10

    .line 1831
    .line 1832
    move/from16 v35, v32

    .line 1833
    .line 1834
    const/16 v3, 0x5cd

    .line 1835
    .line 1836
    const/16 v4, 0x9

    .line 1837
    .line 1838
    const/16 v10, 0xb

    .line 1839
    .line 1840
    const/16 v32, 0x2

    .line 1841
    .line 1842
    goto/16 :goto_29

    .line 1843
    .line 1844
    :cond_2f
    move/from16 v30, v10

    .line 1845
    .line 1846
    move/from16 v18, v11

    .line 1847
    .line 1848
    move-object/from16 v11, v32

    .line 1849
    .line 1850
    move-object/from16 v2, v35

    .line 1851
    .line 1852
    const/16 v1, 0x20

    .line 1853
    .line 1854
    goto :goto_27

    .line 1855
    :cond_30
    move/from16 v30, v10

    .line 1856
    .line 1857
    move/from16 v18, v11

    .line 1858
    .line 1859
    move-object/from16 v11, v32

    .line 1860
    .line 1861
    move-object/from16 v2, v35

    .line 1862
    .line 1863
    const/4 v1, 0x6

    .line 1864
    :goto_27
    move/from16 v32, v1

    .line 1865
    .line 1866
    move/from16 v34, v3

    .line 1867
    .line 1868
    move/from16 v38, v34

    .line 1869
    .line 1870
    move/from16 v35, v4

    .line 1871
    .line 1872
    move/from16 v37, v35

    .line 1873
    .line 1874
    const/16 v3, 0x2e68

    .line 1875
    .line 1876
    const/16 v4, 0x12

    .line 1877
    .line 1878
    const/16 v10, 0x16

    .line 1879
    .line 1880
    goto :goto_28

    .line 1881
    :cond_31
    move/from16 v30, v10

    .line 1882
    .line 1883
    move/from16 v18, v11

    .line 1884
    .line 1885
    move-object/from16 v11, v32

    .line 1886
    .line 1887
    move-object/from16 v2, v35

    .line 1888
    .line 1889
    const/16 v33, 0x1734

    .line 1890
    .line 1891
    move/from16 v34, v3

    .line 1892
    .line 1893
    move/from16 v38, v34

    .line 1894
    .line 1895
    move/from16 v35, v4

    .line 1896
    .line 1897
    move/from16 v37, v35

    .line 1898
    .line 1899
    move/from16 v3, v33

    .line 1900
    .line 1901
    const/16 v4, 0x12

    .line 1902
    .line 1903
    const/16 v10, 0x16

    .line 1904
    .line 1905
    const/16 v32, 0x2

    .line 1906
    .line 1907
    :goto_28
    const/16 v33, 0x1

    .line 1908
    .line 1909
    const/16 v39, 0x1e

    .line 1910
    .line 1911
    goto :goto_2a

    .line 1912
    :cond_32
    move/from16 v30, v10

    .line 1913
    .line 1914
    move/from16 v18, v11

    .line 1915
    .line 1916
    move-object/from16 v11, v32

    .line 1917
    .line 1918
    move-object/from16 v2, v35

    .line 1919
    .line 1920
    move/from16 v34, v3

    .line 1921
    .line 1922
    move/from16 v38, v34

    .line 1923
    .line 1924
    move/from16 v35, v4

    .line 1925
    .line 1926
    move/from16 v37, v35

    .line 1927
    .line 1928
    const/16 v3, 0x5cd

    .line 1929
    .line 1930
    const/16 v4, 0x9

    .line 1931
    .line 1932
    const/16 v10, 0xb

    .line 1933
    .line 1934
    const/16 v32, 0x1

    .line 1935
    .line 1936
    const/16 v33, 0x1

    .line 1937
    .line 1938
    :goto_29
    const/16 v39, 0xf

    .line 1939
    .line 1940
    :goto_2a
    iget v1, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1941
    .line 1942
    move/from16 v40, v14

    .line 1943
    .line 1944
    const/4 v14, 0x1

    .line 1945
    if-eq v1, v14, :cond_33

    .line 1946
    .line 1947
    const/4 v14, 0x2

    .line 1948
    if-eq v1, v14, :cond_33

    .line 1949
    .line 1950
    const/4 v14, 0x4

    .line 1951
    if-eq v1, v14, :cond_33

    .line 1952
    .line 1953
    const/16 v14, 0x8

    .line 1954
    .line 1955
    if-eq v1, v14, :cond_33

    .line 1956
    .line 1957
    const/16 v14, 0x10

    .line 1958
    .line 1959
    if-eq v1, v14, :cond_33

    .line 1960
    .line 1961
    const/16 v14, 0x20

    .line 1962
    .line 1963
    if-eq v1, v14, :cond_33

    .line 1964
    .line 1965
    const/16 v14, 0x40

    .line 1966
    .line 1967
    if-eq v1, v14, :cond_33

    .line 1968
    .line 1969
    const/16 v14, 0x80

    .line 1970
    .line 1971
    if-eq v1, v14, :cond_33

    .line 1972
    .line 1973
    const/16 v14, 0x100

    .line 1974
    .line 1975
    if-eq v1, v14, :cond_33

    .line 1976
    .line 1977
    new-instance v1, Ljava/lang/StringBuilder;

    .line 1978
    .line 1979
    const-string v14, "Unrecognized profile "

    .line 1980
    .line 1981
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 1982
    .line 1983
    .line 1984
    iget v14, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 1985
    .line 1986
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 1987
    .line 1988
    .line 1989
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1990
    .line 1991
    .line 1992
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1993
    .line 1994
    .line 1995
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 1996
    .line 1997
    .line 1998
    move-result-object v1

    .line 1999
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2000
    .line 2001
    .line 2002
    or-int/lit8 v22, v22, 0x1

    .line 2003
    .line 2004
    :cond_33
    if-eqz v33, :cond_34

    .line 2005
    .line 2006
    const/16 v1, 0xb

    .line 2007
    .line 2008
    const/16 v14, 0x9

    .line 2009
    .line 2010
    goto :goto_2b

    .line 2011
    :cond_34
    const/4 v1, 0x1

    .line 2012
    iput-boolean v1, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    .line 2013
    .line 2014
    move/from16 v1, v34

    .line 2015
    .line 2016
    move/from16 v14, v35

    .line 2017
    .line 2018
    :goto_2b
    and-int/lit8 v22, v22, -0x5

    .line 2019
    .line 2020
    move-object/from16 v35, v2

    .line 2021
    .line 2022
    int-to-long v2, v3

    .line 2023
    invoke-static {v2, v3, v8, v9}, Ljava/lang/Math;->max(JJ)J

    .line 2024
    .line 2025
    .line 2026
    move-result-wide v8

    .line 2027
    mul-int v2, v10, v4

    .line 2028
    .line 2029
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 2030
    .line 2031
    .line 2032
    move-result v7

    .line 2033
    const v2, 0xfa00

    .line 2034
    .line 2035
    .line 2036
    mul-int v2, v2, v32

    .line 2037
    .line 2038
    invoke-static {v2, v13}, Ljava/lang/Math;->max(II)I

    .line 2039
    .line 2040
    .line 2041
    move-result v13

    .line 2042
    invoke-static {v10, v5}, Ljava/lang/Math;->max(II)I

    .line 2043
    .line 2044
    .line 2045
    move-result v5

    .line 2046
    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    .line 2047
    .line 2048
    .line 2049
    move-result v6

    .line 2050
    move/from16 v2, v39

    .line 2051
    .line 2052
    move/from16 v15, v40

    .line 2053
    .line 2054
    invoke-static {v2, v15}, Ljava/lang/Math;->max(II)I

    .line 2055
    .line 2056
    .line 2057
    move-result v2

    .line 2058
    move/from16 v3, v38

    .line 2059
    .line 2060
    invoke-static {v1, v3}, Ljava/lang/Math;->min(II)I

    .line 2061
    .line 2062
    .line 2063
    move-result v3

    .line 2064
    move/from16 v4, v37

    .line 2065
    .line 2066
    invoke-static {v14, v4}, Ljava/lang/Math;->min(II)I

    .line 2067
    .line 2068
    .line 2069
    move-result v4

    .line 2070
    add-int/lit8 v10, v30, 0x1

    .line 2071
    .line 2072
    move v14, v2

    .line 2073
    move-object/from16 v32, v11

    .line 2074
    .line 2075
    move/from16 v2, v17

    .line 2076
    .line 2077
    move/from16 v11, v18

    .line 2078
    .line 2079
    move-object/from16 v1, v36

    .line 2080
    .line 2081
    goto/16 :goto_22

    .line 2082
    .line 2083
    :cond_35
    move/from16 v18, v11

    .line 2084
    .line 2085
    move v15, v14

    .line 2086
    iget-boolean v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    .line 2087
    .line 2088
    if-nez v0, :cond_36

    .line 2089
    .line 2090
    new-instance v0, Landroid/util/Rational;

    .line 2091
    .line 2092
    const/16 v1, 0x9

    .line 2093
    .line 2094
    const/16 v2, 0xb

    .line 2095
    .line 2096
    invoke-direct {v0, v2, v1}, Landroid/util/Rational;-><init>(II)V

    .line 2097
    .line 2098
    .line 2099
    new-instance v10, Landroid/util/Rational;

    .line 2100
    .line 2101
    invoke-direct {v10, v2, v1}, Landroid/util/Rational;-><init>(II)V

    .line 2102
    .line 2103
    .line 2104
    invoke-static {v0, v10}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 2105
    .line 2106
    .line 2107
    move-result-object v0

    .line 2108
    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 2109
    .line 2110
    :cond_36
    const/16 v10, 0x10

    .line 2111
    .line 2112
    const/16 v11, 0x10

    .line 2113
    .line 2114
    move-object/from16 v0, p0

    .line 2115
    .line 2116
    move v1, v3

    .line 2117
    move v2, v4

    .line 2118
    move v3, v5

    .line 2119
    move v4, v6

    .line 2120
    move v5, v7

    .line 2121
    move-wide v6, v8

    .line 2122
    move v8, v10

    .line 2123
    move v9, v11

    .line 2124
    move/from16 v10, v18

    .line 2125
    .line 2126
    move/from16 v11, v18

    .line 2127
    .line 2128
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    .line 2129
    .line 2130
    .line 2131
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2132
    .line 2133
    .line 2134
    move-result-object v0

    .line 2135
    move-object/from16 v10, v27

    .line 2136
    .line 2137
    invoke-static {v10, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 2138
    .line 2139
    .line 2140
    move-result-object v0

    .line 2141
    iput-object v0, v12, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 2142
    .line 2143
    :goto_2c
    move v6, v13

    .line 2144
    goto/16 :goto_3b

    .line 2145
    .line 2146
    :cond_37
    move-object/from16 v10, v27

    .line 2147
    .line 2148
    move-object/from16 v11, v32

    .line 2149
    .line 2150
    const-string/jumbo v1, "video/x-vnd.on2.vp8"

    .line 2151
    .line 2152
    .line 2153
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2154
    .line 2155
    .line 2156
    move-result v1

    .line 2157
    if-eqz v1, :cond_3b

    .line 2158
    .line 2159
    const v3, 0x7fffffff

    .line 2160
    .line 2161
    .line 2162
    const-wide/32 v4, 0x7fffffff

    .line 2163
    .line 2164
    .line 2165
    move-object/from16 v1, v36

    .line 2166
    .line 2167
    array-length v2, v1

    .line 2168
    const/4 v14, 0x0

    .line 2169
    const/16 v22, 0x4

    .line 2170
    .line 2171
    :goto_2d
    if-ge v14, v2, :cond_3a

    .line 2172
    .line 2173
    aget-object v6, v1, v14

    .line 2174
    .line 2175
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2176
    .line 2177
    const/4 v8, 0x1

    .line 2178
    if-eq v7, v8, :cond_38

    .line 2179
    .line 2180
    const/4 v8, 0x2

    .line 2181
    if-eq v7, v8, :cond_38

    .line 2182
    .line 2183
    const/4 v8, 0x4

    .line 2184
    if-eq v7, v8, :cond_38

    .line 2185
    .line 2186
    const/16 v8, 0x8

    .line 2187
    .line 2188
    if-eq v7, v8, :cond_38

    .line 2189
    .line 2190
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2191
    .line 2192
    const-string v8, "Unrecognized level "

    .line 2193
    .line 2194
    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2195
    .line 2196
    .line 2197
    iget v8, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2198
    .line 2199
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2200
    .line 2201
    .line 2202
    move-object/from16 v8, v35

    .line 2203
    .line 2204
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2205
    .line 2206
    .line 2207
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2208
    .line 2209
    .line 2210
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2211
    .line 2212
    .line 2213
    move-result-object v7

    .line 2214
    invoke-static {v11, v7}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2215
    .line 2216
    .line 2217
    or-int/lit8 v22, v22, 0x1

    .line 2218
    .line 2219
    goto :goto_2e

    .line 2220
    :cond_38
    move-object/from16 v8, v35

    .line 2221
    .line 2222
    :goto_2e
    iget v7, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2223
    .line 2224
    const/4 v9, 0x1

    .line 2225
    if-eq v7, v9, :cond_39

    .line 2226
    .line 2227
    new-instance v7, Ljava/lang/StringBuilder;

    .line 2228
    .line 2229
    const-string v9, "Unrecognized profile "

    .line 2230
    .line 2231
    invoke-direct {v7, v9}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2232
    .line 2233
    .line 2234
    iget v6, v6, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2235
    .line 2236
    invoke-virtual {v7, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2237
    .line 2238
    .line 2239
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2240
    .line 2241
    .line 2242
    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2243
    .line 2244
    .line 2245
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2246
    .line 2247
    .line 2248
    move-result-object v6

    .line 2249
    invoke-static {v11, v6}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2250
    .line 2251
    .line 2252
    or-int/lit8 v22, v22, 0x1

    .line 2253
    .line 2254
    :cond_39
    and-int/lit8 v22, v22, -0x5

    .line 2255
    .line 2256
    add-int/lit8 v14, v14, 0x1

    .line 2257
    .line 2258
    move-object/from16 v35, v8

    .line 2259
    .line 2260
    goto :goto_2d

    .line 2261
    :cond_3a
    const/16 v1, 0x7fff

    .line 2262
    .line 2263
    const/16 v2, 0x7fff

    .line 2264
    .line 2265
    const/16 v6, 0x10

    .line 2266
    .line 2267
    const/16 v7, 0x10

    .line 2268
    .line 2269
    const/4 v8, 0x1

    .line 2270
    const/4 v9, 0x1

    .line 2271
    move-object/from16 v0, p0

    .line 2272
    .line 2273
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2274
    .line 2275
    .line 2276
    const v6, 0x5f5e100

    .line 2277
    .line 2278
    .line 2279
    move-object/from16 v27, v10

    .line 2280
    .line 2281
    goto/16 :goto_3b

    .line 2282
    .line 2283
    :cond_3b
    move-object/from16 v8, v35

    .line 2284
    .line 2285
    move-object/from16 v1, v36

    .line 2286
    .line 2287
    const-string/jumbo v2, "video/x-vnd.on2.vp9"

    .line 2288
    .line 2289
    .line 2290
    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2291
    .line 2292
    .line 2293
    move-result v2

    .line 2294
    if-eqz v2, :cond_40

    .line 2295
    .line 2296
    array-length v2, v1

    .line 2297
    const-wide/32 v5, 0xca800

    .line 2298
    .line 2299
    .line 2300
    const v7, 0x9000

    .line 2301
    .line 2302
    .line 2303
    const v9, 0x30d40

    .line 2304
    .line 2305
    .line 2306
    const/16 v13, 0x200

    .line 2307
    .line 2308
    const/4 v14, 0x0

    .line 2309
    const/16 v22, 0x4

    .line 2310
    .line 2311
    move/from16 v41, v13

    .line 2312
    .line 2313
    move v13, v9

    .line 2314
    move/from16 v9, v41

    .line 2315
    .line 2316
    :goto_2f
    if-ge v14, v2, :cond_3f

    .line 2317
    .line 2318
    aget-object v15, v1, v14

    .line 2319
    .line 2320
    iget v3, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2321
    .line 2322
    const/4 v4, 0x1

    .line 2323
    if-eq v3, v4, :cond_3d

    .line 2324
    .line 2325
    const/4 v4, 0x2

    .line 2326
    if-eq v3, v4, :cond_3c

    .line 2327
    .line 2328
    sparse-switch v3, :sswitch_data_2

    .line 2329
    .line 2330
    .line 2331
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2332
    .line 2333
    const-string v4, "Unrecognized level "

    .line 2334
    .line 2335
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2336
    .line 2337
    .line 2338
    iget v4, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2339
    .line 2340
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2341
    .line 2342
    .line 2343
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2344
    .line 2345
    .line 2346
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2347
    .line 2348
    .line 2349
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2350
    .line 2351
    .line 2352
    move-result-object v3

    .line 2353
    invoke-static {v11, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2354
    .line 2355
    .line 2356
    or-int/lit8 v22, v22, 0x1

    .line 2357
    .line 2358
    const-wide/16 v3, 0x0

    .line 2359
    .line 2360
    move-object/from16 v31, v1

    .line 2361
    .line 2362
    move/from16 v18, v2

    .line 2363
    .line 2364
    move-object/from16 v27, v10

    .line 2365
    .line 2366
    const/4 v2, 0x0

    .line 2367
    const/4 v10, 0x0

    .line 2368
    const/4 v12, 0x0

    .line 2369
    goto/16 :goto_34

    .line 2370
    .line 2371
    :sswitch_11
    const-wide v3, 0x118800000L

    .line 2372
    .line 2373
    .line 2374
    .line 2375
    .line 2376
    const v18, 0x75300

    .line 2377
    .line 2378
    .line 2379
    goto :goto_30

    .line 2380
    :sswitch_12
    const-wide v3, 0x8c400000L

    .line 2381
    .line 2382
    .line 2383
    .line 2384
    .line 2385
    const v18, 0x3a980

    .line 2386
    .line 2387
    .line 2388
    goto :goto_30

    .line 2389
    :sswitch_13
    const-wide/32 v3, 0x46200000

    .line 2390
    .line 2391
    .line 2392
    const v18, 0x2bf20

    .line 2393
    .line 2394
    .line 2395
    :goto_30
    const/16 v19, 0x41c0

    .line 2396
    .line 2397
    move-object/from16 v31, v1

    .line 2398
    .line 2399
    move-object/from16 v27, v10

    .line 2400
    .line 2401
    move/from16 v12, v18

    .line 2402
    .line 2403
    move/from16 v10, v19

    .line 2404
    .line 2405
    move/from16 v18, v2

    .line 2406
    .line 2407
    const/high16 v2, 0x2200000

    .line 2408
    .line 2409
    goto/16 :goto_34

    .line 2410
    .line 2411
    :sswitch_14
    const-wide/32 v3, 0x46200000

    .line 2412
    .line 2413
    .line 2414
    const v18, 0x2bf20

    .line 2415
    .line 2416
    .line 2417
    goto :goto_31

    .line 2418
    :sswitch_15
    const-wide/32 v3, 0x23100000

    .line 2419
    .line 2420
    .line 2421
    const v18, 0x1d4c0

    .line 2422
    .line 2423
    .line 2424
    goto :goto_31

    .line 2425
    :sswitch_16
    const-wide/32 v3, 0x12980000

    .line 2426
    .line 2427
    .line 2428
    const v18, 0xea60

    .line 2429
    .line 2430
    .line 2431
    :goto_31
    const/16 v19, 0x20c0

    .line 2432
    .line 2433
    move-object/from16 v31, v1

    .line 2434
    .line 2435
    move-object/from16 v27, v10

    .line 2436
    .line 2437
    move/from16 v12, v18

    .line 2438
    .line 2439
    move/from16 v10, v19

    .line 2440
    .line 2441
    move/from16 v18, v2

    .line 2442
    .line 2443
    const/high16 v2, 0x880000

    .line 2444
    .line 2445
    goto :goto_34

    .line 2446
    :sswitch_17
    const-wide/32 v3, 0x9900000

    .line 2447
    .line 2448
    .line 2449
    const/high16 v18, 0x220000

    .line 2450
    .line 2451
    const/16 v19, 0x7530

    .line 2452
    .line 2453
    goto :goto_32

    .line 2454
    :sswitch_18
    const-wide/32 v3, 0x4fb0000

    .line 2455
    .line 2456
    .line 2457
    const/high16 v18, 0x220000

    .line 2458
    .line 2459
    const/16 v19, 0x4650

    .line 2460
    .line 2461
    :goto_32
    const/16 v20, 0x1040

    .line 2462
    .line 2463
    goto :goto_33

    .line 2464
    :sswitch_19
    const-wide/32 v3, 0x2328000

    .line 2465
    .line 2466
    .line 2467
    const/high16 v18, 0xf0000

    .line 2468
    .line 2469
    const/16 v19, 0x2ee0

    .line 2470
    .line 2471
    const/16 v20, 0xac0

    .line 2472
    .line 2473
    goto :goto_33

    .line 2474
    :sswitch_1a
    const-wide/32 v3, 0x13c6800

    .line 2475
    .line 2476
    .line 2477
    const v18, 0x87000

    .line 2478
    .line 2479
    .line 2480
    const/16 v19, 0x1c20

    .line 2481
    .line 2482
    const/16 v20, 0x800

    .line 2483
    .line 2484
    goto :goto_33

    .line 2485
    :sswitch_1b
    const-wide/32 v3, 0x8ca000

    .line 2486
    .line 2487
    .line 2488
    const v18, 0x3c000

    .line 2489
    .line 2490
    .line 2491
    const/16 v19, 0xe10

    .line 2492
    .line 2493
    const/16 v20, 0x540

    .line 2494
    .line 2495
    goto :goto_33

    .line 2496
    :sswitch_1c
    const-wide/32 v3, 0x465000

    .line 2497
    .line 2498
    .line 2499
    const v18, 0x1e000

    .line 2500
    .line 2501
    .line 2502
    const/16 v19, 0x708

    .line 2503
    .line 2504
    const/16 v20, 0x3c0

    .line 2505
    .line 2506
    goto :goto_33

    .line 2507
    :cond_3c
    const-wide/32 v3, 0x2a3000

    .line 2508
    .line 2509
    .line 2510
    const v18, 0x12000

    .line 2511
    .line 2512
    .line 2513
    const/16 v19, 0x320

    .line 2514
    .line 2515
    const/16 v20, 0x300

    .line 2516
    .line 2517
    goto :goto_33

    .line 2518
    :cond_3d
    const-wide/32 v3, 0xca800

    .line 2519
    .line 2520
    .line 2521
    const v18, 0x9000

    .line 2522
    .line 2523
    .line 2524
    const/16 v19, 0xc8

    .line 2525
    .line 2526
    const/16 v20, 0x200

    .line 2527
    .line 2528
    :goto_33
    move-object/from16 v31, v1

    .line 2529
    .line 2530
    move-object/from16 v27, v10

    .line 2531
    .line 2532
    move/from16 v12, v19

    .line 2533
    .line 2534
    move/from16 v10, v20

    .line 2535
    .line 2536
    move/from16 v41, v18

    .line 2537
    .line 2538
    move/from16 v18, v2

    .line 2539
    .line 2540
    move/from16 v2, v41

    .line 2541
    .line 2542
    :goto_34
    iget v1, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2543
    .line 2544
    move/from16 v19, v14

    .line 2545
    .line 2546
    const/4 v14, 0x1

    .line 2547
    if-eq v1, v14, :cond_3e

    .line 2548
    .line 2549
    const/4 v14, 0x2

    .line 2550
    if-eq v1, v14, :cond_3e

    .line 2551
    .line 2552
    const/4 v14, 0x4

    .line 2553
    if-eq v1, v14, :cond_3e

    .line 2554
    .line 2555
    const/16 v14, 0x8

    .line 2556
    .line 2557
    if-eq v1, v14, :cond_3e

    .line 2558
    .line 2559
    const/16 v14, 0x1000

    .line 2560
    .line 2561
    if-eq v1, v14, :cond_3e

    .line 2562
    .line 2563
    const/16 v14, 0x2000

    .line 2564
    .line 2565
    if-eq v1, v14, :cond_3e

    .line 2566
    .line 2567
    new-instance v1, Ljava/lang/StringBuilder;

    .line 2568
    .line 2569
    const-string v14, "Unrecognized profile "

    .line 2570
    .line 2571
    invoke-direct {v1, v14}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2572
    .line 2573
    .line 2574
    iget v14, v15, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2575
    .line 2576
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2577
    .line 2578
    .line 2579
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2580
    .line 2581
    .line 2582
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2583
    .line 2584
    .line 2585
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2586
    .line 2587
    .line 2588
    move-result-object v1

    .line 2589
    invoke-static {v11, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2590
    .line 2591
    .line 2592
    or-int/lit8 v22, v22, 0x1

    .line 2593
    .line 2594
    :cond_3e
    and-int/lit8 v22, v22, -0x5

    .line 2595
    .line 2596
    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->max(JJ)J

    .line 2597
    .line 2598
    .line 2599
    move-result-wide v5

    .line 2600
    invoke-static {v2, v7}, Ljava/lang/Math;->max(II)I

    .line 2601
    .line 2602
    .line 2603
    move-result v7

    .line 2604
    mul-int/lit16 v12, v12, 0x3e8

    .line 2605
    .line 2606
    invoke-static {v12, v13}, Ljava/lang/Math;->max(II)I

    .line 2607
    .line 2608
    .line 2609
    move-result v13

    .line 2610
    invoke-static {v10, v9}, Ljava/lang/Math;->max(II)I

    .line 2611
    .line 2612
    .line 2613
    move-result v9

    .line 2614
    add-int/lit8 v14, v19, 0x1

    .line 2615
    .line 2616
    move-object/from16 v12, p0

    .line 2617
    .line 2618
    move/from16 v2, v18

    .line 2619
    .line 2620
    move-object/from16 v10, v27

    .line 2621
    .line 2622
    move-object/from16 v1, v31

    .line 2623
    .line 2624
    goto/16 :goto_2f

    .line 2625
    .line 2626
    :cond_3f
    move-object/from16 v27, v10

    .line 2627
    .line 2628
    const/16 v1, 0x8

    .line 2629
    .line 2630
    invoke-static {v9, v1}, Landroid/media/Utils;->divUp(II)I

    .line 2631
    .line 2632
    .line 2633
    move-result v2

    .line 2634
    const/16 v0, 0x40

    .line 2635
    .line 2636
    invoke-static {v7, v0}, Landroid/media/Utils;->divUp(II)I

    .line 2637
    .line 2638
    .line 2639
    move-result v3

    .line 2640
    const-wide/16 v0, 0x40

    .line 2641
    .line 2642
    invoke-static {v5, v6, v0, v1}, Landroid/media/Utils;->divUp(JJ)J

    .line 2643
    .line 2644
    .line 2645
    move-result-wide v4

    .line 2646
    const/16 v6, 0x8

    .line 2647
    .line 2648
    const/16 v7, 0x8

    .line 2649
    .line 2650
    const/4 v8, 0x1

    .line 2651
    const/4 v9, 0x1

    .line 2652
    move-object/from16 v0, p0

    .line 2653
    .line 2654
    move v1, v2

    .line 2655
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2656
    .line 2657
    .line 2658
    goto/16 :goto_2c

    .line 2659
    .line 2660
    :cond_40
    move-object/from16 v31, v1

    .line 2661
    .line 2662
    move-object/from16 v27, v10

    .line 2663
    .line 2664
    const-string/jumbo v1, "video/hevc"

    .line 2665
    .line 2666
    .line 2667
    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    .line 2668
    .line 2669
    .line 2670
    move-result v1

    .line 2671
    if-eqz v1, :cond_44

    .line 2672
    .line 2673
    const/16 v1, 0x21c0

    .line 2674
    .line 2675
    int-to-long v1, v1

    .line 2676
    move-object/from16 v3, v31

    .line 2677
    .line 2678
    array-length v4, v3

    .line 2679
    const/16 v5, 0x240

    .line 2680
    .line 2681
    const v6, 0x1f400

    .line 2682
    .line 2683
    .line 2684
    move v10, v6

    .line 2685
    const/16 v24, 0x4

    .line 2686
    .line 2687
    move-wide v6, v1

    .line 2688
    const/4 v1, 0x0

    .line 2689
    :goto_35
    if-ge v1, v4, :cond_43

    .line 2690
    .line 2691
    aget-object v2, v3, v1

    .line 2692
    .line 2693
    iget v9, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2694
    .line 2695
    const/4 v12, 0x1

    .line 2696
    if-eq v9, v12, :cond_41

    .line 2697
    .line 2698
    const/4 v12, 0x2

    .line 2699
    if-eq v9, v12, :cond_41

    .line 2700
    .line 2701
    const-wide/high16 v12, 0x403e000000000000L    # 30.0

    .line 2702
    .line 2703
    sparse-switch v9, :sswitch_data_3

    .line 2704
    .line 2705
    .line 2706
    new-instance v9, Ljava/lang/StringBuilder;

    .line 2707
    .line 2708
    const-string v12, "Unrecognized level "

    .line 2709
    .line 2710
    invoke-direct {v9, v12}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2711
    .line 2712
    .line 2713
    iget v12, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->level:I

    .line 2714
    .line 2715
    invoke-virtual {v9, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2716
    .line 2717
    .line 2718
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2719
    .line 2720
    .line 2721
    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2722
    .line 2723
    .line 2724
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2725
    .line 2726
    .line 2727
    move-result-object v9

    .line 2728
    invoke-static {v11, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2729
    .line 2730
    .line 2731
    or-int/lit8 v24, v24, 0x1

    .line 2732
    .line 2733
    const-wide/16 v12, 0x0

    .line 2734
    .line 2735
    move-wide v13, v12

    .line 2736
    const/4 v9, 0x0

    .line 2737
    const/4 v12, 0x0

    .line 2738
    goto/16 :goto_3a

    .line 2739
    .line 2740
    :sswitch_1d
    const-wide/high16 v12, 0x405e000000000000L    # 120.0

    .line 2741
    .line 2742
    const v9, 0xc3500

    .line 2743
    .line 2744
    .line 2745
    goto :goto_37

    .line 2746
    :sswitch_1e
    const-wide/high16 v12, 0x405e000000000000L    # 120.0

    .line 2747
    .line 2748
    goto :goto_36

    .line 2749
    :sswitch_1f
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2750
    .line 2751
    const v9, 0x75300

    .line 2752
    .line 2753
    .line 2754
    goto :goto_37

    .line 2755
    :sswitch_20
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2756
    .line 2757
    const v9, 0x1d4c0

    .line 2758
    .line 2759
    .line 2760
    goto :goto_37

    .line 2761
    :goto_36
    :sswitch_21
    const v9, 0x3a980

    .line 2762
    .line 2763
    .line 2764
    goto :goto_37

    .line 2765
    :sswitch_22
    const v9, 0xea60

    .line 2766
    .line 2767
    .line 2768
    :goto_37
    move-wide v13, v12

    .line 2769
    const/high16 v12, 0x2200000

    .line 2770
    .line 2771
    goto/16 :goto_3a

    .line 2772
    .line 2773
    :sswitch_23
    const-wide/high16 v12, 0x405e000000000000L    # 120.0

    .line 2774
    .line 2775
    const v9, 0x3a980

    .line 2776
    .line 2777
    .line 2778
    goto :goto_38

    .line 2779
    :sswitch_24
    const-wide/high16 v12, 0x405e000000000000L    # 120.0

    .line 2780
    .line 2781
    const v9, 0xea60

    .line 2782
    .line 2783
    .line 2784
    goto :goto_38

    .line 2785
    :sswitch_25
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2786
    .line 2787
    const v9, 0x27100

    .line 2788
    .line 2789
    .line 2790
    goto :goto_38

    .line 2791
    :sswitch_26
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2792
    .line 2793
    const v9, 0x9c40

    .line 2794
    .line 2795
    .line 2796
    goto :goto_38

    .line 2797
    :sswitch_27
    const v9, 0x186a0

    .line 2798
    .line 2799
    .line 2800
    goto :goto_38

    .line 2801
    :sswitch_28
    const/16 v9, 0x61a8

    .line 2802
    .line 2803
    :goto_38
    move-wide v13, v12

    .line 2804
    const/high16 v12, 0x880000

    .line 2805
    .line 2806
    goto :goto_3a

    .line 2807
    :sswitch_29
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2808
    .line 2809
    const/high16 v9, 0x220000

    .line 2810
    .line 2811
    const v14, 0xc350

    .line 2812
    .line 2813
    .line 2814
    goto :goto_39

    .line 2815
    :sswitch_2a
    const-wide/high16 v12, 0x404e000000000000L    # 60.0

    .line 2816
    .line 2817
    const/high16 v9, 0x220000

    .line 2818
    .line 2819
    const/16 v14, 0x4e20

    .line 2820
    .line 2821
    goto :goto_39

    .line 2822
    :sswitch_2b
    const/high16 v9, 0x220000

    .line 2823
    .line 2824
    const/16 v14, 0x7530

    .line 2825
    .line 2826
    goto :goto_39

    .line 2827
    :sswitch_2c
    const/high16 v9, 0x220000

    .line 2828
    .line 2829
    const/16 v14, 0x2ee0

    .line 2830
    .line 2831
    goto :goto_39

    .line 2832
    :sswitch_2d
    const-wide v12, 0x4040e00000000000L    # 33.75

    .line 2833
    .line 2834
    .line 2835
    .line 2836
    .line 2837
    const/high16 v9, 0xf0000

    .line 2838
    .line 2839
    const/16 v14, 0x2710

    .line 2840
    .line 2841
    goto :goto_39

    .line 2842
    :sswitch_2e
    const v9, 0x87000

    .line 2843
    .line 2844
    .line 2845
    const/16 v14, 0x1770

    .line 2846
    .line 2847
    goto :goto_39

    .line 2848
    :sswitch_2f
    const v9, 0x3c000

    .line 2849
    .line 2850
    .line 2851
    const/16 v14, 0xbb8

    .line 2852
    .line 2853
    goto :goto_39

    .line 2854
    :sswitch_30
    const v9, 0x1e000

    .line 2855
    .line 2856
    .line 2857
    const/16 v14, 0x5dc

    .line 2858
    .line 2859
    :goto_39
    move-wide/from16 v41, v12

    .line 2860
    .line 2861
    move v12, v9

    .line 2862
    move v9, v14

    .line 2863
    move-wide/from16 v13, v41

    .line 2864
    .line 2865
    goto :goto_3a

    .line 2866
    :cond_41
    const-wide/high16 v12, 0x402e000000000000L    # 15.0

    .line 2867
    .line 2868
    const v9, 0x9000

    .line 2869
    .line 2870
    .line 2871
    move-wide v13, v12

    .line 2872
    move v12, v9

    .line 2873
    const/16 v9, 0x80

    .line 2874
    .line 2875
    :goto_3a
    iget v15, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2876
    .line 2877
    move-object/from16 v31, v3

    .line 2878
    .line 2879
    const/4 v3, 0x1

    .line 2880
    if-eq v15, v3, :cond_42

    .line 2881
    .line 2882
    const/4 v3, 0x2

    .line 2883
    if-eq v15, v3, :cond_42

    .line 2884
    .line 2885
    const/16 v3, 0x1000

    .line 2886
    .line 2887
    if-eq v15, v3, :cond_42

    .line 2888
    .line 2889
    new-instance v3, Ljava/lang/StringBuilder;

    .line 2890
    .line 2891
    const-string v15, "Unrecognized profile "

    .line 2892
    .line 2893
    invoke-direct {v3, v15}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 2894
    .line 2895
    .line 2896
    iget v2, v2, Landroid/media/MediaCodecInfo$CodecProfileLevel;->profile:I

    .line 2897
    .line 2898
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 2899
    .line 2900
    .line 2901
    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2902
    .line 2903
    .line 2904
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2905
    .line 2906
    .line 2907
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2908
    .line 2909
    .line 2910
    move-result-object v2

    .line 2911
    invoke-static {v11, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2912
    .line 2913
    .line 2914
    or-int/lit8 v24, v24, 0x1

    .line 2915
    .line 2916
    :cond_42
    shr-int/lit8 v2, v12, 0x6

    .line 2917
    .line 2918
    and-int/lit8 v24, v24, -0x5

    .line 2919
    .line 2920
    move v12, v4

    .line 2921
    int-to-double v3, v2

    .line 2922
    mul-double/2addr v13, v3

    .line 2923
    double-to-int v3, v13

    .line 2924
    int-to-long v3, v3

    .line 2925
    invoke-static {v3, v4, v6, v7}, Ljava/lang/Math;->max(JJ)J

    .line 2926
    .line 2927
    .line 2928
    move-result-wide v6

    .line 2929
    invoke-static {v2, v5}, Ljava/lang/Math;->max(II)I

    .line 2930
    .line 2931
    .line 2932
    move-result v5

    .line 2933
    mul-int/lit16 v9, v9, 0x3e8

    .line 2934
    .line 2935
    invoke-static {v9, v10}, Ljava/lang/Math;->max(II)I

    .line 2936
    .line 2937
    .line 2938
    move-result v10

    .line 2939
    add-int/lit8 v1, v1, 0x1

    .line 2940
    .line 2941
    move v4, v12

    .line 2942
    move-object/from16 v3, v31

    .line 2943
    .line 2944
    goto/16 :goto_35

    .line 2945
    .line 2946
    :cond_43
    mul-int/lit8 v0, v5, 0x8

    .line 2947
    .line 2948
    int-to-double v0, v0

    .line 2949
    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    .line 2950
    .line 2951
    .line 2952
    move-result-wide v0

    .line 2953
    double-to-int v2, v0

    .line 2954
    const/16 v8, 0x8

    .line 2955
    .line 2956
    const/16 v9, 0x8

    .line 2957
    .line 2958
    const/4 v11, 0x1

    .line 2959
    const/4 v12, 0x1

    .line 2960
    move-object/from16 v0, p0

    .line 2961
    .line 2962
    move v1, v2

    .line 2963
    move v3, v5

    .line 2964
    move-wide v4, v6

    .line 2965
    move v6, v8

    .line 2966
    move v7, v9

    .line 2967
    move v8, v11

    .line 2968
    move v9, v12

    .line 2969
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 2970
    .line 2971
    .line 2972
    move v6, v10

    .line 2973
    move/from16 v22, v24

    .line 2974
    .line 2975
    goto :goto_3b

    .line 2976
    :cond_44
    const-string v1, "Unsupported mime "

    .line 2977
    .line 2978
    invoke-virtual {v1, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 2979
    .line 2980
    .line 2981
    move-result-object v0

    .line 2982
    invoke-static {v11, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 2983
    .line 2984
    .line 2985
    const v6, 0xfa00

    .line 2986
    .line 2987
    .line 2988
    const/16 v22, 0x6

    .line 2989
    .line 2990
    :goto_3b
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2991
    .line 2992
    .line 2993
    move-result-object v0

    .line 2994
    move-object/from16 v1, v27

    .line 2995
    .line 2996
    invoke-static {v1, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 2997
    .line 2998
    .line 2999
    move-result-object v0

    .line 3000
    move-object/from16 v1, p0

    .line 3001
    .line 3002
    iput-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 3003
    .line 3004
    iget-object v0, v1, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 3005
    .line 3006
    iget v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 3007
    .line 3008
    or-int v2, v2, v22

    .line 3009
    .line 3010
    iput v2, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 3011
    .line 3012
    return-void

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_e
        0x8 -> :sswitch_d
        0x10 -> :sswitch_c
        0x20 -> :sswitch_b
        0x40 -> :sswitch_a
        0x80 -> :sswitch_9
        0x100 -> :sswitch_8
        0x200 -> :sswitch_7
        0x400 -> :sswitch_6
        0x800 -> :sswitch_5
        0x1000 -> :sswitch_4
        0x2000 -> :sswitch_3
        0x4000 -> :sswitch_2
        0x8000 -> :sswitch_1
        0x10000 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x4 -> :sswitch_10
        0x8 -> :sswitch_10
        0x10 -> :sswitch_10
        0x20 -> :sswitch_10
        0x40 -> :sswitch_10
        0x80 -> :sswitch_10
        0x100 -> :sswitch_10
        0x200 -> :sswitch_10
        0x400 -> :sswitch_10
        0x800 -> :sswitch_10
        0x1000 -> :sswitch_10
        0x2000 -> :sswitch_10
        0x4000 -> :sswitch_10
        0x8000 -> :sswitch_f
    .end sparse-switch

    :sswitch_data_2
    .sparse-switch
        0x4 -> :sswitch_1c
        0x8 -> :sswitch_1b
        0x10 -> :sswitch_1a
        0x20 -> :sswitch_19
        0x40 -> :sswitch_18
        0x80 -> :sswitch_17
        0x100 -> :sswitch_16
        0x200 -> :sswitch_15
        0x400 -> :sswitch_14
        0x800 -> :sswitch_13
        0x1000 -> :sswitch_12
        0x2000 -> :sswitch_11
    .end sparse-switch

    :sswitch_data_3
    .sparse-switch
        0x4 -> :sswitch_30
        0x8 -> :sswitch_30
        0x10 -> :sswitch_2f
        0x20 -> :sswitch_2f
        0x40 -> :sswitch_2e
        0x80 -> :sswitch_2e
        0x100 -> :sswitch_2d
        0x200 -> :sswitch_2d
        0x400 -> :sswitch_2c
        0x800 -> :sswitch_2b
        0x1000 -> :sswitch_2a
        0x2000 -> :sswitch_29
        0x4000 -> :sswitch_28
        0x8000 -> :sswitch_27
        0x10000 -> :sswitch_26
        0x20000 -> :sswitch_25
        0x40000 -> :sswitch_24
        0x80000 -> :sswitch_23
        0x100000 -> :sswitch_22
        0x200000 -> :sswitch_21
        0x400000 -> :sswitch_20
        0x800000 -> :sswitch_1f
        0x1000000 -> :sswitch_1e
        0x2000000 -> :sswitch_1d
    .end sparse-switch
.end method

.method private applyMacroBlockLimits(IIIIIJIIII)V
    .locals 9

    move-object v6, p0

    move v7, p3

    move v8, p4

    move/from16 v0, p10

    move/from16 v1, p11

    .line 2
    invoke-direct {p0, v0, v1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyAlignment(II)V

    const/4 v0, 0x1

    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v3

    const-wide/16 v1, 0x1

    .line 4
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v4

    new-instance v1, Landroid/util/Rational;

    invoke-direct {v1, v0, p4}, Landroid/util/Rational;-><init>(II)V

    new-instance v2, Landroid/util/Rational;

    invoke-direct {v2, p3, v0}, Landroid/util/Rational;-><init>(II)V

    .line 5
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v5

    move-object v0, p0

    move/from16 v1, p8

    move/from16 v2, p9

    .line 6
    invoke-direct/range {v0 .. v5}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyBlockLimits(IILandroid/util/Range;Landroid/util/Range;Landroid/util/Range;)V

    .line 7
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v1, v1, p8

    move v2, p1

    .line 8
    invoke-static {p1, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    div-int v2, v2, p8

    div-int v2, v7, v2

    .line 9
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 10
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 11
    iget-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    iget v1, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v1, v1, p9

    move v2, p2

    .line 12
    invoke-static {p2, v1}, Landroid/media/Utils;->divUp(II)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    div-int v2, v2, p9

    div-int v2, v8, v2

    .line 13
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v0

    iput-object v0, v6, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    return-void
.end method

.method private applyMacroBlockLimits(IIIJIIII)V
    .locals 12

    const/4 v1, 0x1

    const/4 v2, 0x1

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    move-wide/from16 v6, p4

    move/from16 v8, p6

    move/from16 v9, p7

    move/from16 v10, p8

    move/from16 v11, p9

    .line 1
    invoke-direct/range {v0 .. v11}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIIIJIIII)V

    return-void
.end method

.method public static create(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)Landroid/media/MediaCodecInfo$VideoCapabilities;
    .locals 1

    .line 1
    new-instance v0, Landroid/media/MediaCodecInfo$VideoCapabilities;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V

    .line 7
    .line 8
    .line 9
    return-object v0
.end method

.method public static equivalentVP9Level(Landroid/media/MediaFormat;)I
    .locals 11

    .line 1
    invoke-virtual {p0}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "block-size"

    .line 6
    .line 7
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    new-instance v1, Landroid/util/Size;

    .line 12
    .line 13
    const/16 v2, 0x8

    .line 14
    .line 15
    invoke-direct {v1, v2, v2}, Landroid/util/Size;-><init>(II)V

    .line 16
    .line 17
    .line 18
    invoke-static {v0, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 27
    .line 28
    .line 29
    move-result v0

    .line 30
    mul-int/2addr v0, v1

    .line 31
    const-string v1, "block-count-range"

    .line 32
    .line 33
    invoke-interface {p0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    const/4 v3, 0x0

    .line 38
    invoke-static {v1, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 39
    .line 40
    .line 41
    move-result-object v1

    .line 42
    const/4 v4, 0x0

    .line 43
    if-nez v1, :cond_0

    .line 44
    .line 45
    move v1, v4

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 48
    .line 49
    .line 50
    move-result-object v1

    .line 51
    check-cast v1, Ljava/lang/Integer;

    .line 52
    .line 53
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 54
    .line 55
    .line 56
    move-result v1

    .line 57
    mul-int/2addr v1, v0

    .line 58
    :goto_0
    const-string v5, "blocks-per-second-range"

    .line 59
    .line 60
    invoke-interface {p0, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 61
    .line 62
    .line 63
    move-result-object v5

    .line 64
    invoke-static {v5, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 65
    .line 66
    .line 67
    move-result-object v5

    .line 68
    if-nez v5, :cond_1

    .line 69
    .line 70
    const-wide/16 v5, 0x0

    .line 71
    .line 72
    goto :goto_1

    .line 73
    :cond_1
    int-to-long v6, v0

    .line 74
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Long;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 81
    .line 82
    .line 83
    move-result-wide v8

    .line 84
    mul-long v5, v8, v6

    .line 85
    .line 86
    :goto_1
    const-string/jumbo v0, "size-range"

    .line 87
    .line 88
    .line 89
    invoke-interface {p0, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object v0

    .line 93
    invoke-static {v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    if-nez v0, :cond_2

    .line 98
    .line 99
    move v0, v4

    .line 100
    goto :goto_2

    .line 101
    :cond_2
    iget-object v7, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 102
    .line 103
    check-cast v7, Landroid/util/Range;

    .line 104
    .line 105
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 106
    .line 107
    .line 108
    move-result-object v7

    .line 109
    check-cast v7, Ljava/lang/Integer;

    .line 110
    .line 111
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 112
    .line 113
    .line 114
    move-result v7

    .line 115
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 116
    .line 117
    check-cast v0, Landroid/util/Range;

    .line 118
    .line 119
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 120
    .line 121
    .line 122
    move-result-object v0

    .line 123
    check-cast v0, Ljava/lang/Integer;

    .line 124
    .line 125
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 126
    .line 127
    .line 128
    move-result v0

    .line 129
    invoke-static {v7, v0}, Ljava/lang/Math;->max(II)I

    .line 130
    .line 131
    .line 132
    move-result v0

    .line 133
    :goto_2
    const-string v7, "bitrate-range"

    .line 134
    .line 135
    invoke-interface {p0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    .line 137
    .line 138
    move-result-object p0

    .line 139
    invoke-static {p0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 140
    .line 141
    .line 142
    move-result-object p0

    .line 143
    if-nez p0, :cond_3

    .line 144
    .line 145
    goto :goto_3

    .line 146
    :cond_3
    invoke-virtual {p0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 147
    .line 148
    .line 149
    move-result-object p0

    .line 150
    check-cast p0, Ljava/lang/Integer;

    .line 151
    .line 152
    invoke-virtual {p0}, Ljava/lang/Integer;->intValue()I

    .line 153
    .line 154
    .line 155
    move-result p0

    .line 156
    const/16 v3, 0x3e8

    .line 157
    .line 158
    invoke-static {p0, v3}, Landroid/media/Utils;->divUp(II)I

    .line 159
    .line 160
    .line 161
    move-result v4

    .line 162
    :goto_3
    const-wide/32 v7, 0xca800

    .line 163
    .line 164
    .line 165
    cmp-long p0, v5, v7

    .line 166
    .line 167
    const/16 v3, 0x200

    .line 168
    .line 169
    if-gtz p0, :cond_4

    .line 170
    .line 171
    const p0, 0x9000

    .line 172
    .line 173
    .line 174
    if-gt v1, p0, :cond_4

    .line 175
    .line 176
    const/16 p0, 0xc8

    .line 177
    .line 178
    if-gt v4, p0, :cond_4

    .line 179
    .line 180
    if-gt v0, v3, :cond_4

    .line 181
    .line 182
    const/4 p0, 0x1

    .line 183
    return p0

    .line 184
    :cond_4
    const-wide/32 v7, 0x2a3000

    .line 185
    .line 186
    .line 187
    cmp-long p0, v5, v7

    .line 188
    .line 189
    if-gtz p0, :cond_5

    .line 190
    .line 191
    const p0, 0x12000

    .line 192
    .line 193
    .line 194
    if-gt v1, p0, :cond_5

    .line 195
    .line 196
    const/16 p0, 0x320

    .line 197
    .line 198
    if-gt v4, p0, :cond_5

    .line 199
    .line 200
    const/16 p0, 0x300

    .line 201
    .line 202
    if-gt v0, p0, :cond_5

    .line 203
    .line 204
    const/4 p0, 0x2

    .line 205
    return p0

    .line 206
    :cond_5
    const-wide/32 v7, 0x465000

    .line 207
    .line 208
    .line 209
    cmp-long p0, v5, v7

    .line 210
    .line 211
    if-gtz p0, :cond_6

    .line 212
    .line 213
    const p0, 0x1e000

    .line 214
    .line 215
    .line 216
    if-gt v1, p0, :cond_6

    .line 217
    .line 218
    const/16 p0, 0x708

    .line 219
    .line 220
    if-gt v4, p0, :cond_6

    .line 221
    .line 222
    const/16 p0, 0x3c0

    .line 223
    .line 224
    if-gt v0, p0, :cond_6

    .line 225
    .line 226
    const/4 p0, 0x4

    .line 227
    return p0

    .line 228
    :cond_6
    const-wide/32 v7, 0x8ca000

    .line 229
    .line 230
    .line 231
    cmp-long p0, v5, v7

    .line 232
    .line 233
    if-gtz p0, :cond_7

    .line 234
    .line 235
    const p0, 0x3c000

    .line 236
    .line 237
    .line 238
    if-gt v1, p0, :cond_7

    .line 239
    .line 240
    const/16 p0, 0xe10

    .line 241
    .line 242
    if-gt v4, p0, :cond_7

    .line 243
    .line 244
    const/16 p0, 0x540

    .line 245
    .line 246
    if-gt v0, p0, :cond_7

    .line 247
    .line 248
    return v2

    .line 249
    :cond_7
    const-wide/32 v7, 0x13c6800

    .line 250
    .line 251
    .line 252
    cmp-long p0, v5, v7

    .line 253
    .line 254
    const/16 v2, 0x800

    .line 255
    .line 256
    if-gtz p0, :cond_8

    .line 257
    .line 258
    const p0, 0x87000

    .line 259
    .line 260
    .line 261
    if-gt v1, p0, :cond_8

    .line 262
    .line 263
    const/16 p0, 0x1c20

    .line 264
    .line 265
    if-gt v4, p0, :cond_8

    .line 266
    .line 267
    if-gt v0, v2, :cond_8

    .line 268
    .line 269
    const/16 p0, 0x10

    .line 270
    .line 271
    return p0

    .line 272
    :cond_8
    const-wide/32 v7, 0x2328000

    .line 273
    .line 274
    .line 275
    cmp-long p0, v5, v7

    .line 276
    .line 277
    if-gtz p0, :cond_9

    .line 278
    .line 279
    const/high16 p0, 0xf0000

    .line 280
    .line 281
    if-gt v1, p0, :cond_9

    .line 282
    .line 283
    const/16 p0, 0x2ee0

    .line 284
    .line 285
    if-gt v4, p0, :cond_9

    .line 286
    .line 287
    const/16 p0, 0xac0

    .line 288
    .line 289
    if-gt v0, p0, :cond_9

    .line 290
    .line 291
    const/16 p0, 0x20

    .line 292
    .line 293
    return p0

    .line 294
    :cond_9
    const-wide/32 v7, 0x4fb0000

    .line 295
    .line 296
    .line 297
    cmp-long p0, v5, v7

    .line 298
    .line 299
    const/16 v7, 0x1040

    .line 300
    .line 301
    const/high16 v8, 0x220000

    .line 302
    .line 303
    if-gtz p0, :cond_a

    .line 304
    .line 305
    if-gt v1, v8, :cond_a

    .line 306
    .line 307
    const/16 p0, 0x4650

    .line 308
    .line 309
    if-gt v4, p0, :cond_a

    .line 310
    .line 311
    if-gt v0, v7, :cond_a

    .line 312
    .line 313
    const/16 p0, 0x40

    .line 314
    .line 315
    return p0

    .line 316
    :cond_a
    const-wide/32 v9, 0x9900000

    .line 317
    .line 318
    .line 319
    cmp-long p0, v5, v9

    .line 320
    .line 321
    if-gtz p0, :cond_b

    .line 322
    .line 323
    if-gt v1, v8, :cond_b

    .line 324
    .line 325
    const/16 p0, 0x7530

    .line 326
    .line 327
    if-gt v4, p0, :cond_b

    .line 328
    .line 329
    if-gt v0, v7, :cond_b

    .line 330
    .line 331
    const/16 p0, 0x80

    .line 332
    .line 333
    return p0

    .line 334
    :cond_b
    const-wide/32 v7, 0x12980000

    .line 335
    .line 336
    .line 337
    cmp-long p0, v5, v7

    .line 338
    .line 339
    const/16 v7, 0x20c0

    .line 340
    .line 341
    const/high16 v8, 0x880000

    .line 342
    .line 343
    if-gtz p0, :cond_c

    .line 344
    .line 345
    if-gt v1, v8, :cond_c

    .line 346
    .line 347
    const p0, 0xea60

    .line 348
    .line 349
    .line 350
    if-gt v4, p0, :cond_c

    .line 351
    .line 352
    if-gt v0, v7, :cond_c

    .line 353
    .line 354
    const/16 p0, 0x100

    .line 355
    .line 356
    return p0

    .line 357
    :cond_c
    const-wide/32 v9, 0x23100000

    .line 358
    .line 359
    .line 360
    cmp-long p0, v5, v9

    .line 361
    .line 362
    if-gtz p0, :cond_d

    .line 363
    .line 364
    if-gt v1, v8, :cond_d

    .line 365
    .line 366
    const p0, 0x1d4c0

    .line 367
    .line 368
    .line 369
    if-gt v4, p0, :cond_d

    .line 370
    .line 371
    if-gt v0, v7, :cond_d

    .line 372
    .line 373
    return v3

    .line 374
    :cond_d
    const-wide/32 v9, 0x46200000

    .line 375
    .line 376
    .line 377
    cmp-long p0, v5, v9

    .line 378
    .line 379
    const v3, 0x2bf20

    .line 380
    .line 381
    .line 382
    if-gtz p0, :cond_e

    .line 383
    .line 384
    if-gt v1, v8, :cond_e

    .line 385
    .line 386
    if-gt v4, v3, :cond_e

    .line 387
    .line 388
    if-gt v0, v7, :cond_e

    .line 389
    .line 390
    const/16 p0, 0x400

    .line 391
    .line 392
    return p0

    .line 393
    :cond_e
    const/16 v7, 0x41c0

    .line 394
    .line 395
    const/high16 v8, 0x2200000

    .line 396
    .line 397
    if-gtz p0, :cond_f

    .line 398
    .line 399
    if-gt v1, v8, :cond_f

    .line 400
    .line 401
    if-gt v4, v3, :cond_f

    .line 402
    .line 403
    if-gt v0, v7, :cond_f

    .line 404
    .line 405
    return v2

    .line 406
    :cond_f
    const-wide v2, 0x8c400000L

    .line 407
    .line 408
    .line 409
    .line 410
    .line 411
    cmp-long p0, v5, v2

    .line 412
    .line 413
    if-gtz p0, :cond_10

    .line 414
    .line 415
    if-gt v1, v8, :cond_10

    .line 416
    .line 417
    const p0, 0x3a980

    .line 418
    .line 419
    .line 420
    if-gt v4, p0, :cond_10

    .line 421
    .line 422
    if-gt v0, v7, :cond_10

    .line 423
    .line 424
    const/16 p0, 0x1000

    .line 425
    .line 426
    return p0

    .line 427
    :cond_10
    const/16 p0, 0x2000

    .line 428
    .line 429
    return p0
.end method

.method private estimateFrameRatesFor(II)Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->findClosestSize(II)Landroid/util/Size;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Landroid/util/Range;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/util/Size;->getWidth()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    invoke-direct {p0, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    int-to-double v2, v0

    .line 26
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    const/4 p2, 0x1

    .line 31
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    .line 32
    .line 33
    .line 34
    move-result p1

    .line 35
    int-to-double p1, p1

    .line 36
    div-double/2addr v2, p1

    .line 37
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    check-cast p2, Ljava/lang/Long;

    .line 46
    .line 47
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 48
    .line 49
    .line 50
    move-result-wide v2

    .line 51
    long-to-double v2, v2

    .line 52
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 53
    .line 54
    .line 55
    move-result-wide v4

    .line 56
    mul-double/2addr v4, v2

    .line 57
    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 58
    .line 59
    .line 60
    move-result-object p2

    .line 61
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    check-cast v0, Ljava/lang/Long;

    .line 66
    .line 67
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 68
    .line 69
    .line 70
    move-result-wide v0

    .line 71
    long-to-double v0, v0

    .line 72
    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    .line 73
    .line 74
    .line 75
    move-result-wide v2

    .line 76
    mul-double/2addr v2, v0

    .line 77
    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 78
    .line 79
    .line 80
    move-result-object p1

    .line 81
    invoke-static {p2, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    return-object p1
.end method

.method private findClosestSize(II)Landroid/util/Size;
    .locals 5

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 6
    .line 7
    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 8
    .line 9
    .line 10
    move-result-object p2

    .line 11
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 12
    .line 13
    .line 14
    move-result-object p2

    .line 15
    const/4 v0, 0x0

    .line 16
    const v1, 0x7fffffff

    .line 17
    .line 18
    .line 19
    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    if-eqz v2, :cond_1

    .line 24
    .line 25
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/util/Size;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    invoke-direct {p0, v3, v4}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getBlockCount(II)I

    .line 40
    .line 41
    .line 42
    move-result v3

    .line 43
    sub-int v3, p1, v3

    .line 44
    .line 45
    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-ge v3, v1, :cond_0

    .line 50
    .line 51
    move-object v0, v2

    .line 52
    move v1, v3

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    return-object v0
.end method

.method private getBlockCount(II)I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-static {p2, v0}, Landroid/media/Utils;->divUp(II)I

    move-result p2

    mul-int/2addr p1, p2

    return p1
.end method

.method private getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)",
            "Ljava/util/Map<",
            "Landroid/util/Size;",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/HashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 7
    .line 8
    .line 9
    move-result-object v1

    .line 10
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 15
    .line 16
    .line 17
    move-result v2

    .line 18
    if-eqz v2, :cond_5

    .line 19
    .line 20
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    check-cast v2, Ljava/lang/String;

    .line 25
    .line 26
    const-string/jumbo v3, "measured-frame-rate-"

    .line 27
    .line 28
    .line 29
    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    .line 30
    .line 31
    .line 32
    move-result v3

    .line 33
    if-nez v3, :cond_1

    .line 34
    .line 35
    goto :goto_0

    .line 36
    :cond_1
    const/16 v3, 0x14

    .line 37
    .line 38
    invoke-virtual {v2, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 39
    .line 40
    .line 41
    const-string v3, "-"

    .line 42
    .line 43
    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v3

    .line 47
    array-length v4, v3

    .line 48
    const/4 v5, 0x5

    .line 49
    if-eq v4, v5, :cond_2

    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_2
    const/4 v4, 0x3

    .line 53
    aget-object v3, v3, v4

    .line 54
    .line 55
    const/4 v4, 0x0

    .line 56
    invoke-static {v3, v4}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    .line 57
    .line 58
    .line 59
    move-result-object v3

    .line 60
    if-eqz v3, :cond_0

    .line 61
    .line 62
    invoke-virtual {v3}, Landroid/util/Size;->getWidth()I

    .line 63
    .line 64
    .line 65
    move-result v5

    .line 66
    invoke-virtual {v3}, Landroid/util/Size;->getHeight()I

    .line 67
    .line 68
    .line 69
    move-result v6

    .line 70
    mul-int/2addr v6, v5

    .line 71
    if-gtz v6, :cond_3

    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_3
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 75
    .line 76
    .line 77
    move-result-object v2

    .line 78
    invoke-static {v2, v4}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 79
    .line 80
    .line 81
    move-result-object v2

    .line 82
    if-eqz v2, :cond_0

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 85
    .line 86
    .line 87
    move-result-object v4

    .line 88
    check-cast v4, Ljava/lang/Long;

    .line 89
    .line 90
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 91
    .line 92
    .line 93
    move-result-wide v4

    .line 94
    const-wide/16 v6, 0x0

    .line 95
    .line 96
    cmp-long v4, v4, v6

    .line 97
    .line 98
    if-ltz v4, :cond_0

    .line 99
    .line 100
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 101
    .line 102
    .line 103
    move-result-object v4

    .line 104
    check-cast v4, Ljava/lang/Long;

    .line 105
    .line 106
    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    .line 107
    .line 108
    .line 109
    move-result-wide v4

    .line 110
    cmp-long v4, v4, v6

    .line 111
    .line 112
    if-gez v4, :cond_4

    .line 113
    .line 114
    goto :goto_0

    .line 115
    :cond_4
    invoke-virtual {v0, v3, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 116
    .line 117
    .line 118
    goto :goto_0

    .line 119
    :cond_5
    return-object v0
.end method

.method private initWithPlatformLimits()V
    .locals 1

    .line 1
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 6
    .line 7
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 12
    .line 13
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 18
    .line 19
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 24
    .line 25
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 30
    .line 31
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 36
    .line 37
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 42
    .line 43
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 48
    .line 49
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    .line 50
    .line 51
    .line 52
    move-result-object v0

    .line 53
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 54
    .line 55
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 60
    .line 61
    const/4 v0, 0x2

    .line 62
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 63
    .line 64
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 65
    .line 66
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 67
    .line 68
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 69
    .line 70
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 71
    .line 72
    .line 73
    move-result-object v0

    .line 74
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 75
    .line 76
    .line 77
    move-result-object v0

    .line 78
    check-cast v0, Ljava/lang/Integer;

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 81
    .line 82
    .line 83
    move-result v0

    .line 84
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 85
    .line 86
    return-void
.end method

.method private parseFromInfo(Landroid/media/MediaFormat;)V
    .locals 26

    .line 1
    move-object/from16 v10, p0

    .line 2
    .line 3
    invoke-virtual/range {p1 .. p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    new-instance v1, Landroid/util/Size;

    .line 8
    .line 9
    iget v2, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 10
    .line 11
    iget v3, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 12
    .line 13
    invoke-direct {v1, v2, v3}, Landroid/util/Size;-><init>(II)V

    .line 14
    .line 15
    .line 16
    new-instance v2, Landroid/util/Size;

    .line 17
    .line 18
    iget v3, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 19
    .line 20
    iget v4, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 21
    .line 22
    invoke-direct {v2, v3, v4}, Landroid/util/Size;-><init>(II)V

    .line 23
    .line 24
    .line 25
    const-string v3, "block-size"

    .line 26
    .line 27
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-static {v3, v1}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    const-string v1, "alignment"

    .line 36
    .line 37
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v1

    .line 41
    invoke-static {v1, v2}, Landroid/media/Utils;->parseSize(Ljava/lang/Object;Landroid/util/Size;)Landroid/util/Size;

    .line 42
    .line 43
    .line 44
    move-result-object v1

    .line 45
    const-string v2, "block-count-range"

    .line 46
    .line 47
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v2

    .line 51
    const/4 v3, 0x0

    .line 52
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 53
    .line 54
    .line 55
    move-result-object v12

    .line 56
    const-string v2, "blocks-per-second-range"

    .line 57
    .line 58
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    .line 60
    .line 61
    move-result-object v2

    .line 62
    invoke-static {v2, v3}, Landroid/media/Utils;->parseLongRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 63
    .line 64
    .line 65
    move-result-object v13

    .line 66
    invoke-direct {v10, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->getMeasuredFrameRates(Ljava/util/Map;)Ljava/util/Map;

    .line 67
    .line 68
    .line 69
    move-result-object v2

    .line 70
    iput-object v2, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 71
    .line 72
    const-string/jumbo v2, "size-range"

    .line 73
    .line 74
    .line 75
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-static {v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    if-eqz v2, :cond_0

    .line 84
    .line 85
    iget-object v4, v2, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 86
    .line 87
    check-cast v4, Landroid/util/Range;

    .line 88
    .line 89
    iget-object v2, v2, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v2, Landroid/util/Range;

    .line 92
    .line 93
    goto :goto_0

    .line 94
    :cond_0
    move-object v2, v3

    .line 95
    move-object v4, v2

    .line 96
    :goto_0
    const-string v5, "feature-can-swap-width-height"

    .line 97
    .line 98
    invoke-interface {v0, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v5

    .line 102
    const-string v6, "VideoCapabilities"

    .line 103
    .line 104
    if-eqz v5, :cond_2

    .line 105
    .line 106
    if-eqz v4, :cond_1

    .line 107
    .line 108
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 109
    .line 110
    .line 111
    move-result-object v5

    .line 112
    check-cast v5, Ljava/lang/Integer;

    .line 113
    .line 114
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 115
    .line 116
    .line 117
    move-result v5

    .line 118
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 119
    .line 120
    .line 121
    move-result-object v7

    .line 122
    check-cast v7, Ljava/lang/Integer;

    .line 123
    .line 124
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 125
    .line 126
    .line 127
    move-result v7

    .line 128
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 129
    .line 130
    .line 131
    move-result v5

    .line 132
    iput v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 133
    .line 134
    invoke-virtual {v4, v2}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    .line 135
    .line 136
    .line 137
    move-result-object v2

    .line 138
    move-object v14, v2

    .line 139
    move-object v15, v14

    .line 140
    goto :goto_1

    .line 141
    :cond_1
    const-string v5, "feature can-swap-width-height is best used with size-range"

    .line 142
    .line 143
    invoke-static {v6, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 144
    .line 145
    .line 146
    iget-object v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 147
    .line 148
    invoke-virtual {v5}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 149
    .line 150
    .line 151
    move-result-object v5

    .line 152
    check-cast v5, Ljava/lang/Integer;

    .line 153
    .line 154
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 155
    .line 156
    .line 157
    move-result v5

    .line 158
    iget-object v7, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 159
    .line 160
    invoke-virtual {v7}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 161
    .line 162
    .line 163
    move-result-object v7

    .line 164
    check-cast v7, Ljava/lang/Integer;

    .line 165
    .line 166
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 167
    .line 168
    .line 169
    move-result v7

    .line 170
    invoke-static {v5, v7}, Ljava/lang/Math;->min(II)I

    .line 171
    .line 172
    .line 173
    move-result v5

    .line 174
    iput v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 175
    .line 176
    iget-object v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 177
    .line 178
    iget-object v7, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 179
    .line 180
    invoke-virtual {v5, v7}, Landroid/util/Range;->extend(Landroid/util/Range;)Landroid/util/Range;

    .line 181
    .line 182
    .line 183
    move-result-object v5

    .line 184
    iput-object v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 185
    .line 186
    iput-object v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 187
    .line 188
    :cond_2
    move-object v14, v2

    .line 189
    move-object v15, v4

    .line 190
    :goto_1
    const-string v2, "block-aspect-ratio-range"

    .line 191
    .line 192
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 193
    .line 194
    .line 195
    move-result-object v2

    .line 196
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 197
    .line 198
    .line 199
    move-result-object v9

    .line 200
    const-string/jumbo v2, "pixel-aspect-ratio-range"

    .line 201
    .line 202
    .line 203
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 204
    .line 205
    .line 206
    move-result-object v2

    .line 207
    invoke-static {v2, v3}, Landroid/media/Utils;->parseRationalRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 208
    .line 209
    .line 210
    move-result-object v8

    .line 211
    const-string v2, "frame-rate-range"

    .line 212
    .line 213
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    .line 215
    .line 216
    move-result-object v2

    .line 217
    invoke-static {v2, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 218
    .line 219
    .line 220
    move-result-object v2

    .line 221
    const-string v4, ") is out of limits: "

    .line 222
    .line 223
    if-eqz v2, :cond_3

    .line 224
    .line 225
    :try_start_0
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    .line 226
    .line 227
    .line 228
    move-result-object v5

    .line 229
    invoke-virtual {v2, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 230
    .line 231
    .line 232
    move-result-object v2
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 233
    goto :goto_2

    .line 234
    :catch_0
    new-instance v5, Ljava/lang/StringBuilder;

    .line 235
    .line 236
    const-string v7, "frame rate range ("

    .line 237
    .line 238
    invoke-direct {v5, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 239
    .line 240
    .line 241
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 242
    .line 243
    .line 244
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 245
    .line 246
    .line 247
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    .line 248
    .line 249
    .line 250
    move-result-object v2

    .line 251
    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 252
    .line 253
    .line 254
    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v2

    .line 258
    invoke-static {v6, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    .line 260
    .line 261
    move-object v7, v3

    .line 262
    goto :goto_3

    .line 263
    :cond_3
    :goto_2
    move-object v7, v2

    .line 264
    :goto_3
    const-string v2, "bitrate-range"

    .line 265
    .line 266
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    invoke-static {v0, v3}, Landroid/media/Utils;->parseIntRange(Ljava/lang/Object;Landroid/util/Range;)Landroid/util/Range;

    .line 271
    .line 272
    .line 273
    move-result-object v0

    .line 274
    if-eqz v0, :cond_4

    .line 275
    .line 276
    :try_start_1
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    .line 277
    .line 278
    .line 279
    move-result-object v2

    .line 280
    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 281
    .line 282
    .line 283
    move-result-object v3
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 284
    goto :goto_4

    .line 285
    :catch_1
    new-instance v2, Ljava/lang/StringBuilder;

    .line 286
    .line 287
    const-string v5, "bitrate range ("

    .line 288
    .line 289
    invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 290
    .line 291
    .line 292
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 293
    .line 294
    .line 295
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 296
    .line 297
    .line 298
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    .line 299
    .line 300
    .line 301
    move-result-object v0

    .line 302
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 303
    .line 304
    .line 305
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 306
    .line 307
    .line 308
    move-result-object v0

    .line 309
    invoke-static {v6, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    .line 311
    .line 312
    :goto_4
    move-object v6, v3

    .line 313
    goto :goto_5

    .line 314
    :cond_4
    move-object v6, v0

    .line 315
    :goto_5
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    const-string v2, "block-size width must be power of two"

    .line 320
    .line 321
    invoke-static {v0, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 322
    .line 323
    .line 324
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 325
    .line 326
    .line 327
    move-result v0

    .line 328
    const-string v2, "block-size height must be power of two"

    .line 329
    .line 330
    invoke-static {v0, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 331
    .line 332
    .line 333
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 334
    .line 335
    .line 336
    move-result v0

    .line 337
    const-string v2, "alignment width must be power of two"

    .line 338
    .line 339
    invoke-static {v0, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 340
    .line 341
    .line 342
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 343
    .line 344
    .line 345
    move-result v0

    .line 346
    const-string v2, "alignment height must be power of two"

    .line 347
    .line 348
    invoke-static {v0, v2}, Landroid/media/MediaCodecInfo;->access$700(ILjava/lang/String;)I

    .line 349
    .line 350
    .line 351
    const v2, 0x7fffffff

    .line 352
    .line 353
    .line 354
    const v3, 0x7fffffff

    .line 355
    .line 356
    .line 357
    const v4, 0x7fffffff

    .line 358
    .line 359
    .line 360
    const-wide v16, 0x7fffffffffffffffL

    .line 361
    .line 362
    .line 363
    .line 364
    .line 365
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 366
    .line 367
    .line 368
    move-result v18

    .line 369
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 370
    .line 371
    .line 372
    move-result v19

    .line 373
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 374
    .line 375
    .line 376
    move-result v20

    .line 377
    invoke-virtual {v1}, Landroid/util/Size;->getHeight()I

    .line 378
    .line 379
    .line 380
    move-result v21

    .line 381
    move-object/from16 v0, p0

    .line 382
    .line 383
    move v1, v2

    .line 384
    move v2, v3

    .line 385
    move v3, v4

    .line 386
    move-wide/from16 v4, v16

    .line 387
    .line 388
    move-object/from16 v22, v6

    .line 389
    .line 390
    move/from16 v6, v18

    .line 391
    .line 392
    move-object/from16 v23, v7

    .line 393
    .line 394
    move/from16 v7, v19

    .line 395
    .line 396
    move-object/from16 v24, v8

    .line 397
    .line 398
    move/from16 v8, v20

    .line 399
    .line 400
    move-object/from16 v25, v9

    .line 401
    .line 402
    move/from16 v9, v21

    .line 403
    .line 404
    invoke-direct/range {v0 .. v9}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyMacroBlockLimits(IIIJIIII)V

    .line 405
    .line 406
    .line 407
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 408
    .line 409
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 410
    .line 411
    and-int/lit8 v0, v0, 0x2

    .line 412
    .line 413
    if-nez v0, :cond_d

    .line 414
    .line 415
    iget-boolean v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAllowMbOverride:Z

    .line 416
    .line 417
    if-eqz v0, :cond_5

    .line 418
    .line 419
    goto/16 :goto_6

    .line 420
    .line 421
    :cond_5
    if-eqz v15, :cond_6

    .line 422
    .line 423
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 424
    .line 425
    invoke-virtual {v0, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 426
    .line 427
    .line 428
    move-result-object v0

    .line 429
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 430
    .line 431
    :cond_6
    if-eqz v14, :cond_7

    .line 432
    .line 433
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 434
    .line 435
    invoke-virtual {v0, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 436
    .line 437
    .line 438
    move-result-object v0

    .line 439
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 440
    .line 441
    :cond_7
    if-eqz v12, :cond_8

    .line 442
    .line 443
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 444
    .line 445
    iget v1, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 446
    .line 447
    iget v2, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 448
    .line 449
    mul-int/2addr v1, v2

    .line 450
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 451
    .line 452
    .line 453
    move-result v2

    .line 454
    div-int/2addr v1, v2

    .line 455
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 456
    .line 457
    .line 458
    move-result v2

    .line 459
    div-int/2addr v1, v2

    .line 460
    invoke-static {v12, v1}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 461
    .line 462
    .line 463
    move-result-object v1

    .line 464
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 465
    .line 466
    .line 467
    move-result-object v0

    .line 468
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 469
    .line 470
    :cond_8
    if-eqz v13, :cond_9

    .line 471
    .line 472
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 473
    .line 474
    iget v1, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 475
    .line 476
    iget v2, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 477
    .line 478
    mul-int/2addr v1, v2

    .line 479
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 480
    .line 481
    .line 482
    move-result v2

    .line 483
    div-int/2addr v1, v2

    .line 484
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 485
    .line 486
    .line 487
    move-result v2

    .line 488
    div-int/2addr v1, v2

    .line 489
    int-to-long v1, v1

    .line 490
    invoke-static {v13, v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    .line 491
    .line 492
    .line 493
    move-result-object v1

    .line 494
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 495
    .line 496
    .line 497
    move-result-object v0

    .line 498
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 499
    .line 500
    :cond_9
    move-object/from16 v0, v24

    .line 501
    .line 502
    if-eqz v0, :cond_a

    .line 503
    .line 504
    iget-object v1, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 505
    .line 506
    iget v2, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 507
    .line 508
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 509
    .line 510
    .line 511
    move-result v3

    .line 512
    div-int/2addr v2, v3

    .line 513
    iget v3, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 514
    .line 515
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 516
    .line 517
    .line 518
    move-result v4

    .line 519
    div-int/2addr v3, v4

    .line 520
    invoke-static {v0, v2, v3}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    .line 521
    .line 522
    .line 523
    move-result-object v0

    .line 524
    invoke-virtual {v1, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 525
    .line 526
    .line 527
    move-result-object v0

    .line 528
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 529
    .line 530
    :cond_a
    move-object/from16 v1, v25

    .line 531
    .line 532
    if-eqz v1, :cond_b

    .line 533
    .line 534
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 535
    .line 536
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 537
    .line 538
    .line 539
    move-result-object v0

    .line 540
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 541
    .line 542
    :cond_b
    move-object/from16 v2, v23

    .line 543
    .line 544
    if-eqz v2, :cond_c

    .line 545
    .line 546
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 547
    .line 548
    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 549
    .line 550
    .line 551
    move-result-object v0

    .line 552
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 553
    .line 554
    :cond_c
    move-object/from16 v3, v22

    .line 555
    .line 556
    if-eqz v3, :cond_16

    .line 557
    .line 558
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 559
    .line 560
    invoke-virtual {v0, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 561
    .line 562
    .line 563
    move-result-object v0

    .line 564
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 565
    .line 566
    goto/16 :goto_7

    .line 567
    .line 568
    :cond_d
    :goto_6
    move-object/from16 v3, v22

    .line 569
    .line 570
    move-object/from16 v2, v23

    .line 571
    .line 572
    move-object/from16 v0, v24

    .line 573
    .line 574
    move-object/from16 v1, v25

    .line 575
    .line 576
    if-eqz v15, :cond_e

    .line 577
    .line 578
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 579
    .line 580
    .line 581
    move-result-object v4

    .line 582
    invoke-virtual {v4, v15}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 583
    .line 584
    .line 585
    move-result-object v4

    .line 586
    iput-object v4, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 587
    .line 588
    :cond_e
    if-eqz v14, :cond_f

    .line 589
    .line 590
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$300()Landroid/util/Range;

    .line 591
    .line 592
    .line 593
    move-result-object v4

    .line 594
    invoke-virtual {v4, v14}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 595
    .line 596
    .line 597
    move-result-object v4

    .line 598
    iput-object v4, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 599
    .line 600
    :cond_f
    if-eqz v12, :cond_10

    .line 601
    .line 602
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$000()Landroid/util/Range;

    .line 603
    .line 604
    .line 605
    move-result-object v4

    .line 606
    iget v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 607
    .line 608
    iget v6, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 609
    .line 610
    mul-int/2addr v5, v6

    .line 611
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 612
    .line 613
    .line 614
    move-result v6

    .line 615
    div-int/2addr v5, v6

    .line 616
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 617
    .line 618
    .line 619
    move-result v6

    .line 620
    div-int/2addr v5, v6

    .line 621
    invoke-static {v12, v5}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 622
    .line 623
    .line 624
    move-result-object v5

    .line 625
    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    iput-object v4, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 630
    .line 631
    :cond_10
    if-eqz v13, :cond_11

    .line 632
    .line 633
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$500()Landroid/util/Range;

    .line 634
    .line 635
    .line 636
    move-result-object v4

    .line 637
    iget v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 638
    .line 639
    iget v6, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 640
    .line 641
    mul-int/2addr v5, v6

    .line 642
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 643
    .line 644
    .line 645
    move-result v6

    .line 646
    div-int/2addr v5, v6

    .line 647
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 648
    .line 649
    .line 650
    move-result v6

    .line 651
    div-int/2addr v5, v6

    .line 652
    int-to-long v5, v5

    .line 653
    invoke-static {v13, v5, v6}, Landroid/media/Utils;->factorRange(Landroid/util/Range;J)Landroid/util/Range;

    .line 654
    .line 655
    .line 656
    move-result-object v5

    .line 657
    invoke-virtual {v4, v5}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 658
    .line 659
    .line 660
    move-result-object v4

    .line 661
    iput-object v4, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 662
    .line 663
    :cond_11
    if-eqz v0, :cond_12

    .line 664
    .line 665
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    .line 666
    .line 667
    .line 668
    move-result-object v4

    .line 669
    iget v5, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 670
    .line 671
    invoke-virtual {v11}, Landroid/util/Size;->getHeight()I

    .line 672
    .line 673
    .line 674
    move-result v6

    .line 675
    div-int/2addr v5, v6

    .line 676
    iget v6, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 677
    .line 678
    invoke-virtual {v11}, Landroid/util/Size;->getWidth()I

    .line 679
    .line 680
    .line 681
    move-result v7

    .line 682
    div-int/2addr v6, v7

    .line 683
    invoke-static {v0, v5, v6}, Landroid/media/Utils;->scaleRange(Landroid/util/Range;II)Landroid/util/Range;

    .line 684
    .line 685
    .line 686
    move-result-object v0

    .line 687
    invoke-virtual {v4, v0}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 688
    .line 689
    .line 690
    move-result-object v0

    .line 691
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 692
    .line 693
    :cond_12
    if-eqz v1, :cond_13

    .line 694
    .line 695
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$600()Landroid/util/Range;

    .line 696
    .line 697
    .line 698
    move-result-object v0

    .line 699
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 700
    .line 701
    .line 702
    move-result-object v0

    .line 703
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 704
    .line 705
    :cond_13
    if-eqz v2, :cond_14

    .line 706
    .line 707
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$400()Landroid/util/Range;

    .line 708
    .line 709
    .line 710
    move-result-object v0

    .line 711
    invoke-virtual {v0, v2}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 712
    .line 713
    .line 714
    move-result-object v0

    .line 715
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 716
    .line 717
    :cond_14
    if-eqz v3, :cond_16

    .line 718
    .line 719
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 720
    .line 721
    iget v0, v0, Landroid/media/MediaCodecInfo$CodecCapabilities;->mError:I

    .line 722
    .line 723
    and-int/lit8 v0, v0, 0x2

    .line 724
    .line 725
    if-eqz v0, :cond_15

    .line 726
    .line 727
    invoke-static {}, Landroid/media/MediaCodecInfo;->access$200()Landroid/util/Range;

    .line 728
    .line 729
    .line 730
    move-result-object v0

    .line 731
    invoke-virtual {v0, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 732
    .line 733
    .line 734
    move-result-object v0

    .line 735
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 736
    .line 737
    goto :goto_7

    .line 738
    :cond_15
    iget-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 739
    .line 740
    invoke-virtual {v0, v3}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 741
    .line 742
    .line 743
    move-result-object v0

    .line 744
    iput-object v0, v10, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 745
    .line 746
    :cond_16
    :goto_7
    invoke-direct/range {p0 .. p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 747
    .line 748
    .line 749
    return-void
.end method

.method private static parseWidthHeightRanges(Ljava/lang/Object;)Landroid/util/Pair;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Landroid/util/Pair<",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Landroid/media/Utils;->parseSizeRange(Ljava/lang/Object;)Landroid/util/Pair;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    :try_start_0
    iget-object v1, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v1, Landroid/util/Size;

    .line 10
    .line 11
    invoke-virtual {v1}, Landroid/util/Size;->getWidth()I

    .line 12
    .line 13
    .line 14
    move-result v1

    .line 15
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    iget-object v2, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v2, Landroid/util/Size;

    .line 22
    .line 23
    invoke-virtual {v2}, Landroid/util/Size;->getWidth()I

    .line 24
    .line 25
    .line 26
    move-result v2

    .line 27
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 28
    .line 29
    .line 30
    move-result-object v2

    .line 31
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    iget-object v2, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    .line 36
    .line 37
    check-cast v2, Landroid/util/Size;

    .line 38
    .line 39
    invoke-virtual {v2}, Landroid/util/Size;->getHeight()I

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 44
    .line 45
    .line 46
    move-result-object v2

    .line 47
    iget-object v0, v0, Landroid/util/Pair;->second:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v0, Landroid/util/Size;

    .line 50
    .line 51
    invoke-virtual {v0}, Landroid/util/Size;->getHeight()I

    .line 52
    .line 53
    .line 54
    move-result v0

    .line 55
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-static {v2, v0}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 60
    .line 61
    .line 62
    move-result-object v0

    .line 63
    invoke-static {v1, v0}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    .line 64
    .line 65
    .line 66
    move-result-object p0
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 67
    return-object p0

    .line 68
    :catch_0
    new-instance v0, Ljava/lang/StringBuilder;

    .line 69
    .line 70
    const-string v1, "could not parse size range \'"

    .line 71
    .line 72
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    const-string p0, "\'"

    .line 79
    .line 80
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object p0

    .line 87
    const-string v0, "VideoCapabilities"

    .line 88
    .line 89
    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    .line 91
    .line 92
    :cond_0
    const/4 p0, 0x0

    .line 93
    return-object p0
.end method

.method private supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    const/4 v1, 0x1

    .line 3
    if-eqz p1, :cond_1

    .line 4
    .line 5
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 6
    .line 7
    invoke-virtual {v2, p1}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 18
    .line 19
    rem-int/2addr v2, v3

    .line 20
    if-nez v2, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    move v2, v0

    .line 24
    goto :goto_1

    .line 25
    :cond_1
    :goto_0
    move v2, v1

    .line 26
    :goto_1
    if-eqz v2, :cond_3

    .line 27
    .line 28
    if-eqz p2, :cond_3

    .line 29
    .line 30
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 31
    .line 32
    invoke-virtual {v2, p2}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    if-eqz v2, :cond_2

    .line 37
    .line 38
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v2

    .line 42
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 43
    .line 44
    rem-int/2addr v2, v3

    .line 45
    if-nez v2, :cond_2

    .line 46
    .line 47
    move v2, v1

    .line 48
    goto :goto_2

    .line 49
    :cond_2
    move v2, v0

    .line 50
    :cond_3
    :goto_2
    if-eqz v2, :cond_4

    .line 51
    .line 52
    if-eqz p3, :cond_4

    .line 53
    .line 54
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 55
    .line 56
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 57
    .line 58
    .line 59
    move-result-wide v3

    .line 60
    invoke-static {v3, v4}, Landroid/media/Utils;->intRangeFor(D)Landroid/util/Range;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    .line 65
    .line 66
    .line 67
    move-result v2

    .line 68
    :cond_4
    if-eqz v2, :cond_8

    .line 69
    .line 70
    if-eqz p2, :cond_8

    .line 71
    .line 72
    if-eqz p1, :cond_8

    .line 73
    .line 74
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 75
    .line 76
    .line 77
    move-result v2

    .line 78
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v3

    .line 82
    invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 87
    .line 88
    if-gt v2, v3, :cond_5

    .line 89
    .line 90
    move v2, v1

    .line 91
    goto :goto_3

    .line 92
    :cond_5
    move v2, v0

    .line 93
    :goto_3
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 94
    .line 95
    .line 96
    move-result v3

    .line 97
    iget v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 98
    .line 99
    invoke-static {v3, v4}, Landroid/media/Utils;->divUp(II)I

    .line 100
    .line 101
    .line 102
    move-result v3

    .line 103
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 104
    .line 105
    .line 106
    move-result v4

    .line 107
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 108
    .line 109
    invoke-static {v4, v5}, Landroid/media/Utils;->divUp(II)I

    .line 110
    .line 111
    .line 112
    move-result v4

    .line 113
    mul-int v5, v3, v4

    .line 114
    .line 115
    if-eqz v2, :cond_6

    .line 116
    .line 117
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 118
    .line 119
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 120
    .line 121
    .line 122
    move-result-object v6

    .line 123
    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 124
    .line 125
    .line 126
    move-result v2

    .line 127
    if-eqz v2, :cond_6

    .line 128
    .line 129
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 130
    .line 131
    new-instance v6, Landroid/util/Rational;

    .line 132
    .line 133
    invoke-direct {v6, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2, v6}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 137
    .line 138
    .line 139
    move-result v2

    .line 140
    if-eqz v2, :cond_6

    .line 141
    .line 142
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 143
    .line 144
    new-instance v3, Landroid/util/Rational;

    .line 145
    .line 146
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result p1

    .line 150
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result p2

    .line 154
    invoke-direct {v3, p1, p2}, Landroid/util/Rational;-><init>(II)V

    .line 155
    .line 156
    .line 157
    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 158
    .line 159
    .line 160
    move-result p1

    .line 161
    if-eqz p1, :cond_6

    .line 162
    .line 163
    move v0, v1

    .line 164
    :cond_6
    if-eqz v0, :cond_7

    .line 165
    .line 166
    if-eqz p3, :cond_7

    .line 167
    .line 168
    int-to-double p1, v5

    .line 169
    invoke-virtual {p3}, Ljava/lang/Number;->doubleValue()D

    .line 170
    .line 171
    .line 172
    move-result-wide v0

    .line 173
    mul-double/2addr v0, p1

    .line 174
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 175
    .line 176
    invoke-static {v0, v1}, Landroid/media/Utils;->longRangeFor(D)Landroid/util/Range;

    .line 177
    .line 178
    .line 179
    move-result-object p2

    .line 180
    invoke-virtual {p1, p2}, Landroid/util/Range;->contains(Landroid/util/Range;)Z

    .line 181
    .line 182
    .line 183
    move-result v2

    .line 184
    goto :goto_4

    .line 185
    :cond_7
    move v2, v0

    .line 186
    :cond_8
    :goto_4
    return v2
.end method

.method private updateLimits()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 4
    .line 5
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 6
    .line 7
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 12
    .line 13
    .line 14
    move-result-object v0

    .line 15
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 16
    .line 17
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 18
    .line 19
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/lang/Integer;

    .line 24
    .line 25
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 26
    .line 27
    .line 28
    move-result v1

    .line 29
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 30
    .line 31
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 32
    .line 33
    .line 34
    move-result-object v2

    .line 35
    check-cast v2, Ljava/lang/Integer;

    .line 36
    .line 37
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 38
    .line 39
    .line 40
    move-result v2

    .line 41
    div-int/2addr v1, v2

    .line 42
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 47
    .line 48
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 49
    .line 50
    .line 51
    move-result-object v2

    .line 52
    check-cast v2, Ljava/lang/Integer;

    .line 53
    .line 54
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 55
    .line 56
    .line 57
    move-result v2

    .line 58
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 59
    .line 60
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 61
    .line 62
    .line 63
    move-result-object v3

    .line 64
    check-cast v3, Ljava/lang/Integer;

    .line 65
    .line 66
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    div-int/2addr v2, v3

    .line 71
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 72
    .line 73
    .line 74
    move-result-object v2

    .line 75
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 80
    .line 81
    .line 82
    move-result-object v0

    .line 83
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 84
    .line 85
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 86
    .line 87
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 88
    .line 89
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 90
    .line 91
    invoke-static {v1, v2}, Landroid/media/Utils;->factorRange(Landroid/util/Range;I)Landroid/util/Range;

    .line 92
    .line 93
    .line 94
    move-result-object v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 100
    .line 101
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 102
    .line 103
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 104
    .line 105
    .line 106
    move-result-object v1

    .line 107
    check-cast v1, Ljava/lang/Integer;

    .line 108
    .line 109
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 110
    .line 111
    .line 112
    move-result v1

    .line 113
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 114
    .line 115
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    check-cast v2, Ljava/lang/Integer;

    .line 120
    .line 121
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 122
    .line 123
    .line 124
    move-result v2

    .line 125
    div-int/2addr v1, v2

    .line 126
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 127
    .line 128
    .line 129
    move-result-object v1

    .line 130
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 131
    .line 132
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 133
    .line 134
    .line 135
    move-result-object v2

    .line 136
    check-cast v2, Ljava/lang/Integer;

    .line 137
    .line 138
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 139
    .line 140
    .line 141
    move-result v2

    .line 142
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 143
    .line 144
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 145
    .line 146
    .line 147
    move-result-object v3

    .line 148
    check-cast v3, Ljava/lang/Integer;

    .line 149
    .line 150
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 151
    .line 152
    .line 153
    move-result v3

    .line 154
    div-int/2addr v2, v3

    .line 155
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 160
    .line 161
    .line 162
    move-result-object v1

    .line 163
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 164
    .line 165
    .line 166
    move-result-object v0

    .line 167
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 168
    .line 169
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 170
    .line 171
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 172
    .line 173
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 174
    .line 175
    .line 176
    move-result-object v1

    .line 177
    check-cast v1, Ljava/lang/Integer;

    .line 178
    .line 179
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 180
    .line 181
    .line 182
    move-result v1

    .line 183
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 184
    .line 185
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 186
    .line 187
    .line 188
    move-result-object v2

    .line 189
    check-cast v2, Ljava/lang/Integer;

    .line 190
    .line 191
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 192
    .line 193
    .line 194
    move-result v2

    .line 195
    mul-int/2addr v2, v1

    .line 196
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 201
    .line 202
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Ljava/lang/Integer;

    .line 207
    .line 208
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 209
    .line 210
    .line 211
    move-result v2

    .line 212
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 213
    .line 214
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 215
    .line 216
    .line 217
    move-result-object v3

    .line 218
    check-cast v3, Ljava/lang/Integer;

    .line 219
    .line 220
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 221
    .line 222
    .line 223
    move-result v3

    .line 224
    mul-int/2addr v3, v2

    .line 225
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 226
    .line 227
    .line 228
    move-result-object v2

    .line 229
    invoke-static {v1, v2}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 230
    .line 231
    .line 232
    move-result-object v1

    .line 233
    invoke-virtual {v0, v1}, Landroid/util/Range;->intersect(Landroid/util/Range;)Landroid/util/Range;

    .line 234
    .line 235
    .line 236
    move-result-object v0

    .line 237
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 238
    .line 239
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 240
    .line 241
    new-instance v1, Landroid/util/Rational;

    .line 242
    .line 243
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 244
    .line 245
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 246
    .line 247
    .line 248
    move-result-object v2

    .line 249
    check-cast v2, Ljava/lang/Integer;

    .line 250
    .line 251
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 256
    .line 257
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 258
    .line 259
    .line 260
    move-result-object v3

    .line 261
    check-cast v3, Ljava/lang/Integer;

    .line 262
    .line 263
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 264
    .line 265
    .line 266
    move-result v3

    .line 267
    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 268
    .line 269
    .line 270
    new-instance v2, Landroid/util/Rational;

    .line 271
    .line 272
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 273
    .line 274
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 275
    .line 276
    .line 277
    move-result-object v3

    .line 278
    check-cast v3, Ljava/lang/Integer;

    .line 279
    .line 280
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 281
    .line 282
    .line 283
    move-result v3

    .line 284
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 285
    .line 286
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 287
    .line 288
    .line 289
    move-result-object v4

    .line 290
    check-cast v4, Ljava/lang/Integer;

    .line 291
    .line 292
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 293
    .line 294
    .line 295
    move-result v4

    .line 296
    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 297
    .line 298
    .line 299
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 300
    .line 301
    .line 302
    move-result-object v0

    .line 303
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 304
    .line 305
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 306
    .line 307
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 308
    .line 309
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 310
    .line 311
    .line 312
    move-result-object v1

    .line 313
    check-cast v1, Ljava/lang/Integer;

    .line 314
    .line 315
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 316
    .line 317
    .line 318
    move-result v1

    .line 319
    add-int/lit8 v1, v1, -0x1

    .line 320
    .line 321
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 322
    .line 323
    mul-int/2addr v1, v2

    .line 324
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 325
    .line 326
    add-int/2addr v1, v2

    .line 327
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 328
    .line 329
    .line 330
    move-result-object v1

    .line 331
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHorizontalBlockRange:Landroid/util/Range;

    .line 332
    .line 333
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 334
    .line 335
    .line 336
    move-result-object v2

    .line 337
    check-cast v2, Ljava/lang/Integer;

    .line 338
    .line 339
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 340
    .line 341
    .line 342
    move-result v2

    .line 343
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 344
    .line 345
    mul-int/2addr v2, v3

    .line 346
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 347
    .line 348
    .line 349
    move-result-object v2

    .line 350
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 351
    .line 352
    .line 353
    move-result-object v0

    .line 354
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 355
    .line 356
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 357
    .line 358
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 359
    .line 360
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 361
    .line 362
    .line 363
    move-result-object v1

    .line 364
    check-cast v1, Ljava/lang/Integer;

    .line 365
    .line 366
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 367
    .line 368
    .line 369
    move-result v1

    .line 370
    add-int/lit8 v1, v1, -0x1

    .line 371
    .line 372
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 373
    .line 374
    mul-int/2addr v1, v2

    .line 375
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 376
    .line 377
    add-int/2addr v1, v2

    .line 378
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 379
    .line 380
    .line 381
    move-result-object v1

    .line 382
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mVerticalBlockRange:Landroid/util/Range;

    .line 383
    .line 384
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 385
    .line 386
    .line 387
    move-result-object v2

    .line 388
    check-cast v2, Ljava/lang/Integer;

    .line 389
    .line 390
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 395
    .line 396
    mul-int/2addr v2, v3

    .line 397
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 398
    .line 399
    .line 400
    move-result-object v2

    .line 401
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 406
    .line 407
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 408
    .line 409
    new-instance v1, Landroid/util/Rational;

    .line 410
    .line 411
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 412
    .line 413
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 414
    .line 415
    .line 416
    move-result-object v2

    .line 417
    check-cast v2, Ljava/lang/Integer;

    .line 418
    .line 419
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 420
    .line 421
    .line 422
    move-result v2

    .line 423
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 424
    .line 425
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 426
    .line 427
    .line 428
    move-result-object v3

    .line 429
    check-cast v3, Ljava/lang/Integer;

    .line 430
    .line 431
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 432
    .line 433
    .line 434
    move-result v3

    .line 435
    invoke-direct {v1, v2, v3}, Landroid/util/Rational;-><init>(II)V

    .line 436
    .line 437
    .line 438
    new-instance v2, Landroid/util/Rational;

    .line 439
    .line 440
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 441
    .line 442
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 443
    .line 444
    .line 445
    move-result-object v3

    .line 446
    check-cast v3, Ljava/lang/Integer;

    .line 447
    .line 448
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 449
    .line 450
    .line 451
    move-result v3

    .line 452
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 453
    .line 454
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 455
    .line 456
    .line 457
    move-result-object v4

    .line 458
    check-cast v4, Ljava/lang/Integer;

    .line 459
    .line 460
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 461
    .line 462
    .line 463
    move-result v4

    .line 464
    invoke-direct {v2, v3, v4}, Landroid/util/Rational;-><init>(II)V

    .line 465
    .line 466
    .line 467
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 468
    .line 469
    .line 470
    move-result-object v0

    .line 471
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 472
    .line 473
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 474
    .line 475
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 476
    .line 477
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 478
    .line 479
    .line 480
    move-result-object v1

    .line 481
    check-cast v1, Ljava/lang/Integer;

    .line 482
    .line 483
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 484
    .line 485
    .line 486
    move-result v1

    .line 487
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 488
    .line 489
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 490
    .line 491
    .line 492
    move-result-object v2

    .line 493
    check-cast v2, Ljava/lang/Integer;

    .line 494
    .line 495
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 496
    .line 497
    .line 498
    move-result v2

    .line 499
    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    .line 500
    .line 501
    .line 502
    move-result v1

    .line 503
    invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I

    .line 504
    .line 505
    .line 506
    move-result v0

    .line 507
    iput v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 508
    .line 509
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 510
    .line 511
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 512
    .line 513
    invoke-virtual {v1}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 514
    .line 515
    .line 516
    move-result-object v1

    .line 517
    check-cast v1, Ljava/lang/Integer;

    .line 518
    .line 519
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 520
    .line 521
    .line 522
    move-result v1

    .line 523
    int-to-long v1, v1

    .line 524
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 525
    .line 526
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 527
    .line 528
    .line 529
    move-result-object v3

    .line 530
    check-cast v3, Ljava/lang/Integer;

    .line 531
    .line 532
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 533
    .line 534
    .line 535
    move-result v3

    .line 536
    int-to-long v3, v3

    .line 537
    mul-long/2addr v1, v3

    .line 538
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 539
    .line 540
    .line 541
    move-result-object v1

    .line 542
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 543
    .line 544
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 545
    .line 546
    .line 547
    move-result-object v2

    .line 548
    check-cast v2, Ljava/lang/Integer;

    .line 549
    .line 550
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 551
    .line 552
    .line 553
    move-result v2

    .line 554
    int-to-long v2, v2

    .line 555
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 556
    .line 557
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 558
    .line 559
    .line 560
    move-result-object v4

    .line 561
    check-cast v4, Ljava/lang/Integer;

    .line 562
    .line 563
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 564
    .line 565
    .line 566
    move-result v4

    .line 567
    int-to-long v4, v4

    .line 568
    mul-long/2addr v2, v4

    .line 569
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 570
    .line 571
    .line 572
    move-result-object v2

    .line 573
    invoke-virtual {v0, v1, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 574
    .line 575
    .line 576
    move-result-object v0

    .line 577
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 578
    .line 579
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 580
    .line 581
    invoke-virtual {v0}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 582
    .line 583
    .line 584
    move-result-object v0

    .line 585
    check-cast v0, Ljava/lang/Long;

    .line 586
    .line 587
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 588
    .line 589
    .line 590
    move-result-wide v2

    .line 591
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 592
    .line 593
    invoke-virtual {v0}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 594
    .line 595
    .line 596
    move-result-object v0

    .line 597
    check-cast v0, Ljava/lang/Integer;

    .line 598
    .line 599
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 600
    .line 601
    .line 602
    move-result v0

    .line 603
    int-to-long v4, v0

    .line 604
    div-long/2addr v2, v4

    .line 605
    long-to-int v0, v2

    .line 606
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 607
    .line 608
    .line 609
    move-result-object v0

    .line 610
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 611
    .line 612
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 613
    .line 614
    .line 615
    move-result-object v2

    .line 616
    check-cast v2, Ljava/lang/Long;

    .line 617
    .line 618
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 619
    .line 620
    .line 621
    move-result-wide v2

    .line 622
    long-to-double v2, v2

    .line 623
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 624
    .line 625
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 626
    .line 627
    .line 628
    move-result-object v4

    .line 629
    check-cast v4, Ljava/lang/Integer;

    .line 630
    .line 631
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 632
    .line 633
    .line 634
    move-result v4

    .line 635
    int-to-double v4, v4

    .line 636
    div-double/2addr v2, v4

    .line 637
    double-to-int v2, v2

    .line 638
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 639
    .line 640
    .line 641
    move-result-object v2

    .line 642
    invoke-virtual {v1, v0, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 643
    .line 644
    .line 645
    move-result-object v0

    .line 646
    iput-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 647
    .line 648
    return-void
.end method


# virtual methods
.method public areSizeAndRateSupported(IID)Z
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-static {p3, p4}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p3

    invoke-direct {p0, p1, p2, p3}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public getAchievableFrameRatesFor(II)Landroid/util/Range;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mMeasuredFrameRates:Ljava/util/Map;

    .line 17
    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    invoke-interface {v0}, Ljava/util/Map;->size()I

    .line 21
    .line 22
    .line 23
    move-result v0

    .line 24
    if-gtz v0, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-direct {p0, p1, p2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->estimateFrameRatesFor(II)Landroid/util/Range;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    return-object p1

    .line 32
    :cond_1
    :goto_0
    const-string p1, "VideoCapabilities"

    .line 33
    .line 34
    const-string p2, "Codec did not publish any measurement data."

    .line 35
    .line 36
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    .line 38
    .line 39
    return-object v2

    .line 40
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 41
    .line 42
    const-string/jumbo p2, "unsupported size"

    .line 43
    .line 44
    .line 45
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 46
    .line 47
    .line 48
    throw p1
.end method

.method public getAspectRatioRange(Z)Landroid/util/Range;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Landroid/util/Range<",
            "Landroid/util/Rational;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    :goto_0
    return-object p1
.end method

.method public getBitrateRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockCountRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    return-object v0
.end method

.method public getBlockSize()Landroid/util/Size;
    .locals 3

    new-instance v0, Landroid/util/Size;

    iget v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    invoke-direct {v0, v1, v2}, Landroid/util/Size;-><init>(II)V

    return-object v0
.end method

.method public getBlocksPerSecondRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    return-object v0
.end method

.method public getHeightAlignment()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    return v0
.end method

.method public getSmallerDimensionUpperLimit()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    return v0
.end method

.method public getSupportedFrameRates()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedFrameRatesFor(II)Landroid/util/Range;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Landroid/util/Range<",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-direct {p0, v0, v1, v2}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 17
    .line 18
    invoke-static {p1, v0}, Landroid/media/Utils;->divUp(II)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 23
    .line 24
    invoke-static {p2, v0}, Landroid/media/Utils;->divUp(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    mul-int/2addr p1, p2

    .line 29
    iget-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 30
    .line 31
    invoke-virtual {p2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 32
    .line 33
    .line 34
    move-result-object p2

    .line 35
    check-cast p2, Ljava/lang/Long;

    .line 36
    .line 37
    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    .line 38
    .line 39
    .line 40
    move-result-wide v0

    .line 41
    long-to-double v0, v0

    .line 42
    int-to-double p1, p1

    .line 43
    div-double/2addr v0, p1

    .line 44
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 45
    .line 46
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 47
    .line 48
    .line 49
    move-result-object v2

    .line 50
    check-cast v2, Ljava/lang/Integer;

    .line 51
    .line 52
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    .line 53
    .line 54
    .line 55
    move-result v2

    .line 56
    int-to-double v2, v2

    .line 57
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    .line 58
    .line 59
    .line 60
    move-result-wide v0

    .line 61
    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 62
    .line 63
    .line 64
    move-result-object v0

    .line 65
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlocksPerSecondRange:Landroid/util/Range;

    .line 66
    .line 67
    invoke-virtual {v1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 68
    .line 69
    .line 70
    move-result-object v1

    .line 71
    check-cast v1, Ljava/lang/Long;

    .line 72
    .line 73
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    .line 74
    .line 75
    .line 76
    move-result-wide v1

    .line 77
    long-to-double v1, v1

    .line 78
    div-double/2addr v1, p1

    .line 79
    iget-object p1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mFrameRateRange:Landroid/util/Range;

    .line 80
    .line 81
    invoke-virtual {p1}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Ljava/lang/Integer;

    .line 86
    .line 87
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    .line 88
    .line 89
    .line 90
    move-result p1

    .line 91
    int-to-double p1, p1

    .line 92
    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->min(DD)D

    .line 93
    .line 94
    .line 95
    move-result-wide p1

    .line 96
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    .line 97
    .line 98
    .line 99
    move-result-object p1

    .line 100
    invoke-static {v0, p1}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 101
    .line 102
    .line 103
    move-result-object p1

    .line 104
    return-object p1

    .line 105
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 106
    .line 107
    const-string/jumbo p2, "unsupported size"

    .line 108
    .line 109
    .line 110
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 111
    .line 112
    .line 113
    throw p1
.end method

.method public getSupportedHeights()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedHeightsFor(I)Landroid/util/Range;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "unsupported width"

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 19
    .line 20
    rem-int v2, p1, v2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 25
    .line 26
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    int-to-double v4, v2

    .line 47
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 48
    .line 49
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 50
    .line 51
    .line 52
    move-result-object v6

    .line 53
    check-cast v6, Landroid/util/Rational;

    .line 54
    .line 55
    invoke-virtual {v6}, Landroid/util/Rational;->doubleValue()D

    .line 56
    .line 57
    .line 58
    move-result-wide v6

    .line 59
    div-double v6, v4, v6

    .line 60
    .line 61
    invoke-static {v6, v7}, Ljava/lang/Math;->ceil(D)D

    .line 62
    .line 63
    .line 64
    move-result-wide v6

    .line 65
    double-to-int v6, v6

    .line 66
    invoke-static {v3, v6}, Ljava/lang/Math;->max(II)I

    .line 67
    .line 68
    .line 69
    move-result v3

    .line 70
    iget-object v6, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 71
    .line 72
    invoke-virtual {v6}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Ljava/lang/Integer;

    .line 77
    .line 78
    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    .line 79
    .line 80
    .line 81
    move-result v6

    .line 82
    div-int/2addr v6, v2

    .line 83
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 84
    .line 85
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 86
    .line 87
    .line 88
    move-result-object v2

    .line 89
    check-cast v2, Landroid/util/Rational;

    .line 90
    .line 91
    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    .line 92
    .line 93
    .line 94
    move-result-wide v7

    .line 95
    div-double/2addr v4, v7

    .line 96
    double-to-int v2, v4

    .line 97
    invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I

    .line 98
    .line 99
    .line 100
    move-result v2

    .line 101
    const/4 v4, 0x1

    .line 102
    sub-int/2addr v3, v4

    .line 103
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 104
    .line 105
    mul-int/2addr v3, v5

    .line 106
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 107
    .line 108
    add-int/2addr v3, v5

    .line 109
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 110
    .line 111
    .line 112
    move-result-object v3

    .line 113
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 114
    .line 115
    mul-int/2addr v2, v5

    .line 116
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 121
    .line 122
    .line 123
    move-result-object v1

    .line 124
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 125
    .line 126
    if-le p1, v2, :cond_0

    .line 127
    .line 128
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 133
    .line 134
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 135
    .line 136
    .line 137
    move-result-object v3

    .line 138
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    :cond_0
    int-to-double v2, p1

    .line 143
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 144
    .line 145
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 146
    .line 147
    .line 148
    move-result-object v4

    .line 149
    check-cast v4, Landroid/util/Rational;

    .line 150
    .line 151
    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    .line 152
    .line 153
    .line 154
    move-result-wide v4

    .line 155
    div-double v4, v2, v4

    .line 156
    .line 157
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 158
    .line 159
    .line 160
    move-result-wide v4

    .line 161
    double-to-int v4, v4

    .line 162
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 163
    .line 164
    .line 165
    move-result-object v4

    .line 166
    iget-object v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 167
    .line 168
    invoke-virtual {v5}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 169
    .line 170
    .line 171
    move-result-object v5

    .line 172
    check-cast v5, Landroid/util/Rational;

    .line 173
    .line 174
    invoke-virtual {v5}, Landroid/util/Rational;->doubleValue()D

    .line 175
    .line 176
    .line 177
    move-result-wide v5

    .line 178
    div-double/2addr v2, v5

    .line 179
    double-to-int v2, v2

    .line 180
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 181
    .line 182
    .line 183
    move-result-object v2

    .line 184
    invoke-virtual {v1, v4, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 185
    .line 186
    .line 187
    move-result-object p1

    .line 188
    return-object p1

    .line 189
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 190
    .line 191
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 192
    .line 193
    .line 194
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 196
    .line 197
    const-string v2, "could not get supported heights for "

    .line 198
    .line 199
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 203
    .line 204
    .line 205
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 206
    .line 207
    .line 208
    move-result-object p1

    .line 209
    const-string v1, "VideoCapabilities"

    .line 210
    .line 211
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    .line 213
    .line 214
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 215
    .line 216
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 217
    .line 218
    .line 219
    throw p1
.end method

.method public getSupportedWidths()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    return-object v0
.end method

.method public getSupportedWidthsFor(I)Landroid/util/Range;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Landroid/util/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    const-string/jumbo v0, "unsupported height"

    .line 2
    .line 3
    .line 4
    :try_start_0
    iget-object v1, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthRange:Landroid/util/Range;

    .line 5
    .line 6
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightRange:Landroid/util/Range;

    .line 7
    .line 8
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 9
    .line 10
    .line 11
    move-result-object v3

    .line 12
    invoke-virtual {v2, v3}, Landroid/util/Range;->contains(Ljava/lang/Comparable;)Z

    .line 13
    .line 14
    .line 15
    move-result v2

    .line 16
    if-eqz v2, :cond_1

    .line 17
    .line 18
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mHeightAlignment:I

    .line 19
    .line 20
    rem-int v2, p1, v2

    .line 21
    .line 22
    if-nez v2, :cond_1

    .line 23
    .line 24
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockHeight:I

    .line 25
    .line 26
    invoke-static {p1, v2}, Landroid/media/Utils;->divUp(II)I

    .line 27
    .line 28
    .line 29
    move-result v2

    .line 30
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 31
    .line 32
    invoke-virtual {v3}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 33
    .line 34
    .line 35
    move-result-object v3

    .line 36
    check-cast v3, Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v3

    .line 42
    invoke-static {v3, v2}, Landroid/media/Utils;->divUp(II)I

    .line 43
    .line 44
    .line 45
    move-result v3

    .line 46
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 47
    .line 48
    invoke-virtual {v4}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 49
    .line 50
    .line 51
    move-result-object v4

    .line 52
    check-cast v4, Landroid/util/Rational;

    .line 53
    .line 54
    invoke-virtual {v4}, Landroid/util/Rational;->doubleValue()D

    .line 55
    .line 56
    .line 57
    move-result-wide v4

    .line 58
    int-to-double v6, v2

    .line 59
    mul-double/2addr v4, v6

    .line 60
    invoke-static {v4, v5}, Ljava/lang/Math;->ceil(D)D

    .line 61
    .line 62
    .line 63
    move-result-wide v4

    .line 64
    double-to-int v4, v4

    .line 65
    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    .line 66
    .line 67
    .line 68
    move-result v3

    .line 69
    iget-object v4, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockCountRange:Landroid/util/Range;

    .line 70
    .line 71
    invoke-virtual {v4}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 72
    .line 73
    .line 74
    move-result-object v4

    .line 75
    check-cast v4, Ljava/lang/Integer;

    .line 76
    .line 77
    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    .line 78
    .line 79
    .line 80
    move-result v4

    .line 81
    div-int/2addr v4, v2

    .line 82
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockAspectRatioRange:Landroid/util/Range;

    .line 83
    .line 84
    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 85
    .line 86
    .line 87
    move-result-object v2

    .line 88
    check-cast v2, Landroid/util/Rational;

    .line 89
    .line 90
    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    .line 91
    .line 92
    .line 93
    move-result-wide v8

    .line 94
    mul-double/2addr v8, v6

    .line 95
    double-to-int v2, v8

    .line 96
    invoke-static {v4, v2}, Ljava/lang/Math;->min(II)I

    .line 97
    .line 98
    .line 99
    move-result v2

    .line 100
    const/4 v4, 0x1

    .line 101
    sub-int/2addr v3, v4

    .line 102
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 103
    .line 104
    mul-int/2addr v3, v5

    .line 105
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    .line 106
    .line 107
    add-int/2addr v3, v5

    .line 108
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 109
    .line 110
    .line 111
    move-result-object v3

    .line 112
    iget v5, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBlockWidth:I

    .line 113
    .line 114
    mul-int/2addr v2, v5

    .line 115
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v2

    .line 119
    invoke-virtual {v1, v3, v2}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 120
    .line 121
    .line 122
    move-result-object v1

    .line 123
    iget v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 124
    .line 125
    if-le p1, v2, :cond_0

    .line 126
    .line 127
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 128
    .line 129
    .line 130
    move-result-object v2

    .line 131
    iget v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mSmallerDimensionUpperLimit:I

    .line 132
    .line 133
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 134
    .line 135
    .line 136
    move-result-object v3

    .line 137
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :cond_0
    iget-object v2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 142
    .line 143
    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    .line 144
    .line 145
    .line 146
    move-result-object v2

    .line 147
    check-cast v2, Landroid/util/Rational;

    .line 148
    .line 149
    invoke-virtual {v2}, Landroid/util/Rational;->doubleValue()D

    .line 150
    .line 151
    .line 152
    move-result-wide v2

    .line 153
    int-to-double v4, p1

    .line 154
    mul-double/2addr v2, v4

    .line 155
    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    .line 156
    .line 157
    .line 158
    move-result-wide v2

    .line 159
    double-to-int v2, v2

    .line 160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 161
    .line 162
    .line 163
    move-result-object v2

    .line 164
    iget-object v3, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mAspectRatioRange:Landroid/util/Range;

    .line 165
    .line 166
    invoke-virtual {v3}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    .line 167
    .line 168
    .line 169
    move-result-object v3

    .line 170
    check-cast v3, Landroid/util/Rational;

    .line 171
    .line 172
    invoke-virtual {v3}, Landroid/util/Rational;->doubleValue()D

    .line 173
    .line 174
    .line 175
    move-result-wide v6

    .line 176
    mul-double/2addr v6, v4

    .line 177
    double-to-int v3, v6

    .line 178
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 179
    .line 180
    .line 181
    move-result-object v3

    .line 182
    invoke-virtual {v1, v2, v3}, Landroid/util/Range;->intersect(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    .line 183
    .line 184
    .line 185
    move-result-object p1

    .line 186
    return-object p1

    .line 187
    :cond_1
    new-instance v1, Ljava/lang/IllegalArgumentException;

    .line 188
    .line 189
    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 190
    .line 191
    .line 192
    throw v1
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 193
    :catch_0
    new-instance v1, Ljava/lang/StringBuilder;

    .line 194
    .line 195
    const-string v2, "could not get supported widths for "

    .line 196
    .line 197
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 198
    .line 199
    .line 200
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 204
    .line 205
    .line 206
    move-result-object p1

    .line 207
    const-string v1, "VideoCapabilities"

    .line 208
    .line 209
    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 210
    .line 211
    .line 212
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 213
    .line 214
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 215
    .line 216
    .line 217
    throw p1
.end method

.method public getWidthAlignment()I
    .locals 1

    iget v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mWidthAlignment:I

    return v0
.end method

.method public init(Landroid/media/MediaFormat;Landroid/media/MediaCodecInfo$CodecCapabilities;)V
    .locals 0

    .line 1
    iput-object p2, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mParent:Landroid/media/MediaCodecInfo$CodecCapabilities;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->initWithPlatformLimits()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->applyLevelLimits()V

    .line 7
    .line 8
    .line 9
    invoke-direct {p0, p1}, Landroid/media/MediaCodecInfo$VideoCapabilities;->parseFromInfo(Landroid/media/MediaFormat;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->updateLimits()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public isSizeSupported(II)Z
    .locals 1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    move-result p1

    return p1
.end method

.method public supportsFormat(Landroid/media/MediaFormat;)Z
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/media/MediaFormat;->getMap()Ljava/util/Map;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-string/jumbo v1, "width"

    .line 6
    .line 7
    .line 8
    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    check-cast v1, Ljava/lang/Integer;

    .line 13
    .line 14
    const-string/jumbo v2, "height"

    .line 15
    .line 16
    .line 17
    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    .line 19
    .line 20
    move-result-object v2

    .line 21
    check-cast v2, Ljava/lang/Integer;

    .line 22
    .line 23
    const-string v3, "frame-rate"

    .line 24
    .line 25
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, Ljava/lang/Number;

    .line 30
    .line 31
    invoke-direct {p0, v1, v2, v0}, Landroid/media/MediaCodecInfo$VideoCapabilities;->supports(Ljava/lang/Integer;Ljava/lang/Integer;Ljava/lang/Number;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    const/4 v1, 0x0

    .line 36
    if-nez v0, :cond_0

    .line 37
    .line 38
    return v1

    .line 39
    :cond_0
    iget-object v0, p0, Landroid/media/MediaCodecInfo$VideoCapabilities;->mBitrateRange:Landroid/util/Range;

    .line 40
    .line 41
    invoke-static {v0, p1}, Landroid/media/MediaCodecInfo$CodecCapabilities;->access$100(Landroid/util/Range;Landroid/media/MediaFormat;)Z

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    if-nez p1, :cond_1

    .line 46
    .line 47
    return v1

    .line 48
    :cond_1
    const/4 p1, 0x1

    .line 49
    return p1
.end method
