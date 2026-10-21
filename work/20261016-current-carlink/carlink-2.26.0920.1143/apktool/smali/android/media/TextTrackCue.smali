.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "SourceFile"


# static fields
.field static final ALIGNMENT_END:I = 0xca

.field static final ALIGNMENT_LEFT:I = 0xcb

.field static final ALIGNMENT_MIDDLE:I = 0xc8

.field static final ALIGNMENT_RIGHT:I = 0xcc

.field static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field mAlignment:I

.field mAutoLinePosition:Z

.field mId:Ljava/lang/String;

.field mLinePosition:Ljava/lang/Integer;

.field mLines:[[Landroid/media/TextTrackCueSpan;

.field mPauseOnExit:Z

.field mRegion:Landroid/media/TextTrackRegion;

.field mRegionId:Ljava/lang/String;

.field mSize:I

.field mSnapToLines:Z

.field mStrings:[Ljava/lang/String;

.field mTextPosition:I

.field mWritingDirection:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, ""

    .line 5
    .line 6
    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v1, 0x0

    .line 9
    iput-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 10
    .line 11
    const/16 v1, 0x64

    .line 12
    .line 13
    iput v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 14
    .line 15
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 16
    .line 17
    const/4 v0, 0x1

    .line 18
    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 19
    .line 20
    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 22
    .line 23
    const/16 v2, 0x32

    .line 24
    .line 25
    iput v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 26
    .line 27
    iput v1, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 28
    .line 29
    const/16 v1, 0xc8

    .line 30
    .line 31
    iput v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 32
    .line 33
    iput-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 34
    .line 35
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    .line 36
    .line 37
    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 6
    .line 7
    const-string/jumbo v3, "null"

    .line 8
    .line 9
    .line 10
    if-nez v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    goto :goto_3

    .line 16
    :cond_0
    const-string v2, "["

    .line 17
    .line 18
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    .line 20
    .line 21
    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 22
    .line 23
    array-length v4, v2

    .line 24
    const/4 v7, 0x0

    .line 25
    const/4 v8, 0x1

    .line 26
    :goto_0
    if-ge v7, v4, :cond_6

    .line 27
    .line 28
    aget-object v9, v2, v7

    .line 29
    .line 30
    if-nez v8, :cond_1

    .line 31
    .line 32
    const-string v8, ", "

    .line 33
    .line 34
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_1
    if-nez v9, :cond_2

    .line 38
    .line 39
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 40
    .line 41
    .line 42
    goto :goto_2

    .line 43
    :cond_2
    const-string v8, "\""

    .line 44
    .line 45
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    array-length v10, v9

    .line 49
    const-wide/16 v11, -0x1

    .line 50
    .line 51
    const/4 v13, 0x0

    .line 52
    const/4 v14, 0x1

    .line 53
    :goto_1
    if-ge v13, v10, :cond_5

    .line 54
    .line 55
    aget-object v15, v9, v13

    .line 56
    .line 57
    if-nez v14, :cond_3

    .line 58
    .line 59
    const-string v14, " "

    .line 60
    .line 61
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    .line 63
    .line 64
    :cond_3
    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 65
    .line 66
    cmp-long v5, v5, v11

    .line 67
    .line 68
    if-eqz v5, :cond_4

    .line 69
    .line 70
    const-string v5, "<"

    .line 71
    .line 72
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 76
    .line 77
    invoke-static {v5, v6}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    .line 78
    .line 79
    .line 80
    move-result-object v5

    .line 81
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    const-string v5, ">"

    .line 85
    .line 86
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 87
    .line 88
    .line 89
    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 90
    .line 91
    move-wide v11, v5

    .line 92
    :cond_4
    iget-object v5, v15, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    .line 93
    .line 94
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    add-int/lit8 v13, v13, 0x1

    .line 98
    .line 99
    const/4 v14, 0x0

    .line 100
    goto :goto_1

    .line 101
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    .line 103
    .line 104
    :goto_2
    add-int/lit8 v7, v7, 0x1

    .line 105
    .line 106
    const/4 v8, 0x0

    .line 107
    goto :goto_0

    .line 108
    :cond_6
    const-string v2, "]"

    .line 109
    .line 110
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 111
    .line 112
    .line 113
    :goto_3
    return-object v1
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 2
    .line 3
    const-string/jumbo v1, "null"

    .line 4
    .line 5
    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    goto :goto_2

    .line 12
    :cond_0
    const-string v0, "["

    .line 13
    .line 14
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    .line 16
    .line 17
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    .line 18
    .line 19
    array-length v2, v0

    .line 20
    const/4 v3, 0x0

    .line 21
    const/4 v4, 0x1

    .line 22
    move v5, v3

    .line 23
    :goto_0
    if-ge v5, v2, :cond_3

    .line 24
    .line 25
    aget-object v6, v0, v5

    .line 26
    .line 27
    if-nez v4, :cond_1

    .line 28
    .line 29
    const-string v4, ", "

    .line 30
    .line 31
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    :cond_1
    if-nez v6, :cond_2

    .line 35
    .line 36
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const-string v4, "\""

    .line 41
    .line 42
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 43
    .line 44
    .line 45
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 46
    .line 47
    .line 48
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 49
    .line 50
    .line 51
    :goto_1
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    move v4, v3

    .line 54
    goto :goto_0

    .line 55
    :cond_3
    const-string v0, "]"

    .line 56
    .line 57
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 58
    .line 59
    .line 60
    :goto_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/media/TextTrackCue;

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
    const/4 v0, 0x1

    .line 8
    if-ne p0, p1, :cond_1

    .line 9
    .line 10
    return v0

    .line 11
    :cond_1
    :try_start_0
    check-cast p1, Landroid/media/TextTrackCue;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 14
    .line 15
    iget-object v3, p1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    if-eqz v2, :cond_4

    .line 22
    .line 23
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 24
    .line 25
    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 26
    .line 27
    if-ne v2, v3, :cond_4

    .line 28
    .line 29
    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 30
    .line 31
    iget v3, p1, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 32
    .line 33
    if-ne v2, v3, :cond_4

    .line 34
    .line 35
    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 36
    .line 37
    iget-object v3, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 38
    .line 39
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v2

    .line 43
    if-eqz v2, :cond_4

    .line 44
    .line 45
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 46
    .line 47
    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 48
    .line 49
    if-ne v2, v3, :cond_4

    .line 50
    .line 51
    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    .line 52
    .line 53
    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    .line 54
    .line 55
    if-ne v2, v3, :cond_4

    .line 56
    .line 57
    if-nez v2, :cond_3

    .line 58
    .line 59
    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 60
    .line 61
    if-eqz v2, :cond_2

    .line 62
    .line 63
    iget-object v3, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v2, v3}, Ljava/lang/Integer;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_3

    .line 70
    .line 71
    :cond_2
    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 72
    .line 73
    if-nez v2, :cond_4

    .line 74
    .line 75
    iget-object v2, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 76
    .line 77
    if-nez v2, :cond_4

    .line 78
    .line 79
    :cond_3
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 80
    .line 81
    iget v3, p1, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 82
    .line 83
    if-ne v2, v3, :cond_4

    .line 84
    .line 85
    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 86
    .line 87
    iget v3, p1, Landroid/media/TextTrackCue;->mSize:I

    .line 88
    .line 89
    if-ne v2, v3, :cond_4

    .line 90
    .line 91
    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 92
    .line 93
    iget v3, p1, Landroid/media/TextTrackCue;->mAlignment:I

    .line 94
    .line 95
    if-ne v2, v3, :cond_4

    .line 96
    .line 97
    iget-object v2, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 98
    .line 99
    array-length v2, v2

    .line 100
    iget-object v3, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 101
    .line 102
    array-length v3, v3

    .line 103
    if-ne v2, v3, :cond_4

    .line 104
    .line 105
    move v2, v0

    .line 106
    goto :goto_0

    .line 107
    :cond_4
    move v2, v1

    .line 108
    :goto_0
    if-ne v2, v0, :cond_6

    .line 109
    .line 110
    move v0, v1

    .line 111
    :goto_1
    iget-object v3, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 112
    .line 113
    array-length v4, v3

    .line 114
    if-ge v0, v4, :cond_6

    .line 115
    .line 116
    aget-object v3, v3, v0

    .line 117
    .line 118
    iget-object v4, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 119
    .line 120
    aget-object v4, v4, v0

    .line 121
    .line 122
    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    .line 123
    .line 124
    .line 125
    move-result v3
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    .line 126
    if-nez v3, :cond_5

    .line 127
    .line 128
    return v1

    .line 129
    :cond_5
    add-int/lit8 v0, v0, 0x1

    .line 130
    .line 131
    goto :goto_1

    .line 132
    :cond_6
    return v2

    .line 133
    :catch_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Landroid/media/TextTrackCue;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public onTime(J)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 2
    .line 3
    array-length v1, v0

    .line 4
    const/4 v2, 0x0

    .line 5
    move v3, v2

    .line 6
    :goto_0
    if-ge v3, v1, :cond_2

    .line 7
    .line 8
    aget-object v4, v0, v3

    .line 9
    .line 10
    array-length v5, v4

    .line 11
    move v6, v2

    .line 12
    :goto_1
    if-ge v6, v5, :cond_1

    .line 13
    .line 14
    aget-object v7, v4, v6

    .line 15
    .line 16
    iget-wide v8, v7, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    .line 17
    .line 18
    cmp-long v8, p1, v8

    .line 19
    .line 20
    if-ltz v8, :cond_0

    .line 21
    .line 22
    const/4 v8, 0x1

    .line 23
    goto :goto_2

    .line 24
    :cond_0
    move v8, v2

    .line 25
    :goto_2
    iput-boolean v8, v7, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    .line 26
    .line 27
    add-int/lit8 v6, v6, 0x1

    .line 28
    .line 29
    goto :goto_1

    .line 30
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    .line 7
    .line 8
    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    .line 14
    .line 15
    const-string v1, " --> "

    .line 16
    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    .line 19
    .line 20
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    .line 21
    .line 22
    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v1

    .line 26
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    .line 28
    .line 29
    const-string v1, " {id:\""

    .line 30
    .line 31
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 32
    .line 33
    .line 34
    iget-object v1, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    .line 35
    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 37
    .line 38
    .line 39
    const-string v1, "\", pauseOnExit:"

    .line 40
    .line 41
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    .line 45
    .line 46
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 47
    .line 48
    .line 49
    const-string v1, ", direction:"

    .line 50
    .line 51
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 52
    .line 53
    .line 54
    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 55
    .line 56
    const/16 v2, 0x64

    .line 57
    .line 58
    const-string v3, "INVALID"

    .line 59
    .line 60
    if-ne v1, v2, :cond_0

    .line 61
    .line 62
    const-string/jumbo v1, "horizontal"

    .line 63
    .line 64
    .line 65
    goto :goto_0

    .line 66
    :cond_0
    const/16 v2, 0x66

    .line 67
    .line 68
    if-ne v1, v2, :cond_1

    .line 69
    .line 70
    const-string/jumbo v1, "vertical_lr"

    .line 71
    .line 72
    .line 73
    goto :goto_0

    .line 74
    :cond_1
    const/16 v2, 0x65

    .line 75
    .line 76
    if-ne v1, v2, :cond_2

    .line 77
    .line 78
    const-string/jumbo v1, "vertical_rl"

    .line 79
    .line 80
    .line 81
    goto :goto_0

    .line 82
    :cond_2
    move-object v1, v3

    .line 83
    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    .line 85
    .line 86
    const-string v1, ", regionId:\""

    .line 87
    .line 88
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 89
    .line 90
    .line 91
    iget-object v1, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    .line 92
    .line 93
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 94
    .line 95
    .line 96
    const-string v1, "\", snapToLines:"

    .line 97
    .line 98
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    .line 100
    .line 101
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    .line 102
    .line 103
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 104
    .line 105
    .line 106
    const-string v1, ", linePosition:"

    .line 107
    .line 108
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 109
    .line 110
    .line 111
    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    .line 112
    .line 113
    if-eqz v1, :cond_3

    .line 114
    .line 115
    const-string v1, "auto"

    .line 116
    .line 117
    goto :goto_1

    .line 118
    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    .line 119
    .line 120
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 121
    .line 122
    .line 123
    const-string v1, ", textPosition:"

    .line 124
    .line 125
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 126
    .line 127
    .line 128
    iget v1, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 129
    .line 130
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 131
    .line 132
    .line 133
    const-string v1, ", size:"

    .line 134
    .line 135
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 136
    .line 137
    .line 138
    iget v1, p0, Landroid/media/TextTrackCue;->mSize:I

    .line 139
    .line 140
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 141
    .line 142
    .line 143
    const-string v1, ", alignment:"

    .line 144
    .line 145
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 146
    .line 147
    .line 148
    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 149
    .line 150
    const/16 v2, 0xca

    .line 151
    .line 152
    if-ne v1, v2, :cond_4

    .line 153
    .line 154
    const-string v3, "end"

    .line 155
    .line 156
    goto :goto_2

    .line 157
    :cond_4
    const/16 v2, 0xcb

    .line 158
    .line 159
    if-ne v1, v2, :cond_5

    .line 160
    .line 161
    const-string/jumbo v3, "left"

    .line 162
    .line 163
    .line 164
    goto :goto_2

    .line 165
    :cond_5
    const/16 v2, 0xc8

    .line 166
    .line 167
    if-ne v1, v2, :cond_6

    .line 168
    .line 169
    const-string/jumbo v3, "middle"

    .line 170
    .line 171
    .line 172
    goto :goto_2

    .line 173
    :cond_6
    const/16 v2, 0xcc

    .line 174
    .line 175
    if-ne v1, v2, :cond_7

    .line 176
    .line 177
    const-string/jumbo v3, "right"

    .line 178
    .line 179
    .line 180
    goto :goto_2

    .line 181
    :cond_7
    const/16 v2, 0xc9

    .line 182
    .line 183
    if-ne v1, v2, :cond_8

    .line 184
    .line 185
    const-string/jumbo v3, "start"

    .line 186
    .line 187
    .line 188
    :cond_8
    :goto_2
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 189
    .line 190
    .line 191
    const-string v1, ", text:"

    .line 192
    .line 193
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    move-result-object v1

    .line 200
    const-string/jumbo v2, "}"

    .line 201
    .line 202
    .line 203
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 204
    .line 205
    .line 206
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 207
    .line 208
    .line 209
    move-result-object v0

    .line 210
    return-object v0
.end method
