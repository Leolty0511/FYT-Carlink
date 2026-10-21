.class Landroid/media/UnstyledTextExtractor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/Tokenizer$OnTokenListener;


# instance fields
.field mCurrentLine:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field

.field mLastTimestamp:J

.field mLine:Ljava/lang/StringBuilder;

.field mLines:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "[",
            "Landroid/media/TextTrackCueSpan;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    .line 5
    .line 6
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 10
    .line 11
    new-instance v0, Ljava/util/Vector;

    .line 12
    .line 13
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 14
    .line 15
    .line 16
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 17
    .line 18
    new-instance v0, Ljava/util/Vector;

    .line 19
    .line 20
    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    .line 21
    .line 22
    .line 23
    iput-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 24
    .line 25
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 26
    .line 27
    .line 28
    return-void
.end method

.method private init()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 5
    .line 6
    .line 7
    move-result v2

    .line 8
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 12
    .line 13
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 14
    .line 15
    .line 16
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/util/Vector;->clear()V

    .line 19
    .line 20
    .line 21
    const-wide/16 v0, -0x1

    .line 22
    .line 23
    iput-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 24
    .line 25
    return-void
.end method


# virtual methods
.method public getText()[[Landroid/media/TextTrackCueSpan;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-gtz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 10
    .line 11
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-lez v0, :cond_1

    .line 16
    .line 17
    :cond_0
    invoke-virtual {p0}, Landroid/media/UnstyledTextExtractor;->onLineEnd()V

    .line 18
    .line 19
    .line 20
    :cond_1
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 21
    .line 22
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    new-array v0, v0, [[Landroid/media/TextTrackCueSpan;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    invoke-direct {p0}, Landroid/media/UnstyledTextExtractor;->init()V

    .line 34
    .line 35
    .line 36
    return-object v0
.end method

.method public onData(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    return-void
.end method

.method public onEnd(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onLineEnd()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 10
    .line 11
    new-instance v1, Landroid/media/TextTrackCueSpan;

    .line 12
    .line 13
    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 14
    .line 15
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-wide v3, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 20
    .line 21
    invoke-direct {v1, v2, v3, v4}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 25
    .line 26
    .line 27
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 28
    .line 29
    const/4 v1, 0x0

    .line 30
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 31
    .line 32
    .line 33
    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 35
    .line 36
    .line 37
    :cond_0
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 38
    .line 39
    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    new-array v0, v0, [Landroid/media/TextTrackCueSpan;

    .line 44
    .line 45
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 46
    .line 47
    invoke-virtual {v1, v0}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 51
    .line 52
    invoke-virtual {v1}, Ljava/util/Vector;->clear()V

    .line 53
    .line 54
    .line 55
    iget-object v1, p0, Landroid/media/UnstyledTextExtractor;->mLines:Ljava/util/Vector;

    .line 56
    .line 57
    invoke-virtual {v1, v0}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public onStart(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public onTimeStamp(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-lez v0, :cond_0

    .line 8
    .line 9
    iget-wide v0, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 10
    .line 11
    cmp-long v0, p1, v0

    .line 12
    .line 13
    if-eqz v0, :cond_0

    .line 14
    .line 15
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mCurrentLine:Ljava/util/Vector;

    .line 16
    .line 17
    new-instance v1, Landroid/media/TextTrackCueSpan;

    .line 18
    .line 19
    iget-object v2, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 20
    .line 21
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v2

    .line 25
    iget-wide v3, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 26
    .line 27
    invoke-direct {v1, v2, v3, v4}, Landroid/media/TextTrackCueSpan;-><init>(Ljava/lang/String;J)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v0, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 31
    .line 32
    .line 33
    iget-object v0, p0, Landroid/media/UnstyledTextExtractor;->mLine:Ljava/lang/StringBuilder;

    .line 34
    .line 35
    const/4 v1, 0x0

    .line 36
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    .line 37
    .line 38
    .line 39
    move-result v2

    .line 40
    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->delete(II)Ljava/lang/StringBuilder;

    .line 41
    .line 42
    .line 43
    :cond_0
    iput-wide p1, p0, Landroid/media/UnstyledTextExtractor;->mLastTimestamp:J

    .line 44
    .line 45
    return-void
.end method
