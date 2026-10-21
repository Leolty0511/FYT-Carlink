.class Landroid/media/TextTrackCue;
.super Landroid/media/SubtitleTrack$Cue;
.source "SourceFile"


# static fields
.field public static final ALIGNMENT_END:I = 0xca

.field public static final ALIGNMENT_LEFT:I = 0xcb

.field public static final ALIGNMENT_MIDDLE:I = 0xc8

.field public static final ALIGNMENT_RIGHT:I = 0xcc

.field public static final ALIGNMENT_START:I = 0xc9

.field private static final TAG:Ljava/lang/String; = "TTCue"

.field public static final WRITING_DIRECTION_HORIZONTAL:I = 0x64

.field public static final WRITING_DIRECTION_VERTICAL_LR:I = 0x66

.field public static final WRITING_DIRECTION_VERTICAL_RL:I = 0x65


# instance fields
.field public mAlignment:I

.field public mAutoLinePosition:Z

.field public mId:Ljava/lang/String;

.field public mLinePosition:Ljava/lang/Integer;

.field public mLines:[[Landroid/media/TextTrackCueSpan;

.field public mPauseOnExit:Z

.field public mRegion:Landroid/media/TextTrackRegion;

.field public mRegionId:Ljava/lang/String;

.field public mSize:I

.field public mSnapToLines:Z

.field public mStrings:[Ljava/lang/String;

.field public mTextPosition:I

.field public mWritingDirection:I


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/media/SubtitleTrack$Cue;-><init>()V

    const-string v0, ""

    .line 2
    iput-object v0, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    const/16 v1, 0x64

    .line 4
    iput v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    .line 5
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    const/16 v2, 0x32

    .line 8
    iput v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    .line 9
    iput v1, p0, Landroid/media/TextTrackCue;->mSize:I

    const/16 v1, 0xc8

    .line 10
    iput v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    .line 11
    iput-object v0, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    .line 12
    iput-object v0, p0, Landroid/media/TextTrackCue;->mRegion:Landroid/media/TextTrackRegion;

    return-void
.end method


# virtual methods
.method public appendLinesToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    const-string v3, "null"

    if-nez v2, :cond_0

    .line 2
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    :cond_0
    const-string v2, "["

    .line 3
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v2, v0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v2

    const/4 v7, 0x0

    const/4 v8, 0x1

    :goto_0
    if-ge v7, v4, :cond_6

    aget-object v9, v2, v7

    if-nez v8, :cond_1

    const-string v8, ", "

    .line 5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v9, :cond_2

    .line 6
    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_2
    const-string v8, "\""

    .line 7
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-wide/16 v10, -0x1

    .line 8
    array-length v12, v9

    const/4 v13, 0x0

    const/4 v14, 0x1

    :goto_1
    if-ge v13, v12, :cond_5

    aget-object v15, v9, v13

    if-nez v14, :cond_3

    const-string v14, " "

    .line 9
    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v5, v5, v10

    if-eqz v5, :cond_4

    const-string v5, "<"

    .line 11
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    invoke-static {v5, v6}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ">"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    iget-wide v5, v15, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    move-wide v10, v5

    .line 13
    :cond_4
    iget-object v5, v15, Landroid/media/TextTrackCueSpan;->mText:Ljava/lang/String;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v13, v13, 0x1

    const/4 v14, 0x0

    goto :goto_1

    .line 14
    :cond_5
    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    add-int/lit8 v7, v7, 0x1

    const/4 v8, 0x0

    goto :goto_0

    :cond_6
    const-string v2, "]"

    .line 15
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_3
    return-object v1
.end method

.method public appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 7

    .line 1
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    const-string v1, "null"

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    :cond_0
    const-string v0, "["

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    iget-object v0, p0, Landroid/media/TextTrackCue;->mStrings:[Ljava/lang/String;

    array-length v2, v0

    const/4 v3, 0x0

    const/4 v4, 0x1

    move v5, v3

    :goto_0
    if-ge v5, v2, :cond_3

    aget-object v6, v0, v5

    if-nez v4, :cond_1

    const-string v4, ", "

    .line 5
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    if-nez v6, :cond_2

    .line 6
    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string v4, "\""

    .line 7
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_1
    add-int/lit8 v5, v5, 0x1

    move v4, v3

    goto :goto_0

    :cond_3
    const-string v0, "]"

    .line 10
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .line 1
    instance-of v0, p1, Landroid/media/TextTrackCue;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x1

    if-ne p0, p1, :cond_1

    return v0

    .line 2
    :cond_1
    :try_start_0
    check-cast p1, Landroid/media/TextTrackCue;

    .line 3
    iget-object v2, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    iget v3, p1, Landroid/media/TextTrackCue;->mWritingDirection:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    iget-object v3, p1, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mSnapToLines:Z

    if-ne v2, v3, :cond_3

    iget-boolean v2, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    iget-boolean v3, p1, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-ne v2, v3, :cond_3

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    iget-object v3, p1, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    if-ne v2, v3, :cond_3

    :cond_2
    iget v2, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    iget v3, p1, Landroid/media/TextTrackCue;->mTextPosition:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/TextTrackCue;->mSize:I

    iget v3, p1, Landroid/media/TextTrackCue;->mSize:I

    if-ne v2, v3, :cond_3

    iget v2, p0, Landroid/media/TextTrackCue;->mAlignment:I

    iget v3, p1, Landroid/media/TextTrackCue;->mAlignment:I

    if-ne v2, v3, :cond_3

    iget-object v2, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v2, v2

    iget-object v3, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v3, v3

    if-ne v2, v3, :cond_3

    move v2, v0

    goto :goto_0

    :cond_3
    move v2, v1

    :goto_0
    if-ne v2, v0, :cond_5

    move v0, v1

    .line 4
    :goto_1
    iget-object v3, p0, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    array-length v4, v3

    if-ge v0, v4, :cond_5

    .line 5
    aget-object v3, v3, v0

    iget-object v4, p1, Landroid/media/TextTrackCue;->mLines:[[Landroid/media/TextTrackCueSpan;

    aget-object v4, v4, v0

    invoke-static {v3, v4}, Ljava/util/Arrays;->equals([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v3
    :try_end_0
    .catch Ljava/lang/IncompatibleClassChangeError; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v3, :cond_4

    return v1

    :cond_4
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_5
    return v2

    :catch_0
    return v1
.end method

.method public hashCode()I
    .locals 1

    .line 1
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

    array-length v1, v0

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_2

    aget-object v4, v0, v3

    .line 2
    array-length v5, v4

    move v6, v2

    :goto_1
    if-ge v6, v5, :cond_1

    aget-object v7, v4, v6

    .line 3
    iget-wide v8, v7, Landroid/media/TextTrackCueSpan;->mTimestampMs:J

    cmp-long v8, p1, v8

    if-ltz v8, :cond_0

    const/4 v8, 0x1

    goto :goto_2

    :cond_0
    move v8, v2

    :goto_2
    iput-boolean v8, v7, Landroid/media/TextTrackCueSpan;->mEnabled:Z

    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    iget-wide v1, p0, Landroid/media/SubtitleTrack$Cue;->mStartTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " --> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroid/media/SubtitleTrack$Cue;->mEndTimeMs:J

    invoke-static {v1, v2}, Landroid/media/WebVttParser;->timeToString(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " {id:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", pauseOnExit:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mPauseOnExit:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", direction:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mWritingDirection:I

    const-string v2, "INVALID"

    const/16 v3, 0x64

    if-ne v1, v3, :cond_0

    const-string v1, "horizontal"

    goto :goto_0

    :cond_0
    const/16 v3, 0x66

    if-ne v1, v3, :cond_1

    const-string/jumbo v1, "vertical_lr"

    goto :goto_0

    :cond_1
    const/16 v3, 0x65

    if-ne v1, v3, :cond_2

    const-string/jumbo v1, "vertical_rl"

    goto :goto_0

    :cond_2
    move-object v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", regionId:\""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroid/media/TextTrackCue;->mRegionId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\", snapToLines:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mSnapToLines:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", linePosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Landroid/media/TextTrackCue;->mAutoLinePosition:Z

    if-eqz v1, :cond_3

    const-string v1, "auto"

    goto :goto_1

    :cond_3
    iget-object v1, p0, Landroid/media/TextTrackCue;->mLinePosition:Ljava/lang/Integer;

    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", textPosition:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mTextPosition:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", size:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mSize:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", alignment:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroid/media/TextTrackCue;->mAlignment:I

    const/16 v3, 0xca

    if-ne v1, v3, :cond_4

    const-string v2, "end"

    goto :goto_2

    :cond_4
    const/16 v3, 0xcb

    if-ne v1, v3, :cond_5

    const-string v2, "left"

    goto :goto_2

    :cond_5
    const/16 v3, 0xc8

    if-ne v1, v3, :cond_6

    const-string v2, "middle"

    goto :goto_2

    :cond_6
    const/16 v3, 0xcc

    if-ne v1, v3, :cond_7

    const-string/jumbo v2, "right"

    goto :goto_2

    :cond_7
    const/16 v3, 0xc9

    if-ne v1, v3, :cond_8

    const-string/jumbo v2, "start"

    :cond_8
    :goto_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", text:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    invoke-virtual {p0, v0}, Landroid/media/TextTrackCue;->appendStringsToBuilder(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "}"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
