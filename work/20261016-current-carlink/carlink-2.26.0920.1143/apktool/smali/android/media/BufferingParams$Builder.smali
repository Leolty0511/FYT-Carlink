.class public Landroid/media/BufferingParams$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/BufferingParams;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mInitialBufferingMode:I

.field private mInitialWatermarkKB:I

.field private mInitialWatermarkMs:I

.field private mRebufferingMode:I

.field private mRebufferingWatermarkHighKB:I

.field private mRebufferingWatermarkHighMs:I

.field private mRebufferingWatermarkLowKB:I

.field private mRebufferingWatermarkLowMs:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    .line 3
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    const/4 v0, -0x1

    .line 4
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    .line 5
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    .line 6
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 7
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 8
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 9
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method public constructor <init>(Landroid/media/BufferingParams;)V
    .locals 1

    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 11
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    .line 12
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    const/4 v0, -0x1

    .line 13
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    .line 14
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    .line 15
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 16
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 17
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 18
    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    .line 19
    invoke-static {p1}, Landroid/media/BufferingParams;->access$000(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    .line 20
    invoke-static {p1}, Landroid/media/BufferingParams;->access$100(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    .line 21
    invoke-static {p1}, Landroid/media/BufferingParams;->access$200(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    .line 22
    invoke-static {p1}, Landroid/media/BufferingParams;->access$300(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    .line 23
    invoke-static {p1}, Landroid/media/BufferingParams;->access$400(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 24
    invoke-static {p1}, Landroid/media/BufferingParams;->access$500(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 25
    invoke-static {p1}, Landroid/media/BufferingParams;->access$600(Landroid/media/BufferingParams;)I

    move-result v0

    iput v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 26
    invoke-static {p1}, Landroid/media/BufferingParams;->access$700(Landroid/media/BufferingParams;)I

    move-result p1

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-void
.end method

.method private isSizeBasedMode(I)Z
    .locals 1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private isTimeBasedMode(I)Z
    .locals 2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v1, 0x3

    if-ne p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :cond_1
    :goto_0
    return v0
.end method


# virtual methods
.method public build()Landroid/media/BufferingParams;
    .locals 4

    .line 1
    iget v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    .line 2
    .line 3
    invoke-direct {p0, v0}, Landroid/media/BufferingParams$Builder;->isTimeBasedMode(I)Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string v1, " : "

    .line 8
    .line 9
    const-string v2, "Illegal watermark:"

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    iget v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 14
    .line 15
    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 16
    .line 17
    if-gt v0, v3, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 21
    .line 22
    new-instance v3, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget v2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 28
    .line 29
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 30
    .line 31
    .line 32
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 36
    .line 37
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_0
    iget v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    .line 49
    .line 50
    invoke-direct {p0, v0}, Landroid/media/BufferingParams$Builder;->isSizeBasedMode(I)Z

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    if-eqz v0, :cond_3

    .line 55
    .line 56
    iget v0, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 57
    .line 58
    iget v3, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    .line 59
    .line 60
    if-gt v0, v3, :cond_2

    .line 61
    .line 62
    goto :goto_1

    .line 63
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 64
    .line 65
    new-instance v3, Ljava/lang/StringBuilder;

    .line 66
    .line 67
    invoke-direct {v3, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .line 69
    .line 70
    iget v2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 71
    .line 72
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 73
    .line 74
    .line 75
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    .line 77
    .line 78
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    .line 79
    .line 80
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 81
    .line 82
    .line 83
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 88
    .line 89
    .line 90
    throw v0

    .line 91
    :cond_3
    :goto_1
    new-instance v0, Landroid/media/BufferingParams;

    .line 92
    .line 93
    const/4 v1, 0x0

    .line 94
    invoke-direct {v0, v1}, Landroid/media/BufferingParams;-><init>(Landroid/media/BufferingParams$1;)V

    .line 95
    .line 96
    .line 97
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    .line 98
    .line 99
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$002(Landroid/media/BufferingParams;I)I

    .line 100
    .line 101
    .line 102
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    .line 103
    .line 104
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$102(Landroid/media/BufferingParams;I)I

    .line 105
    .line 106
    .line 107
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    .line 108
    .line 109
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$202(Landroid/media/BufferingParams;I)I

    .line 110
    .line 111
    .line 112
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    .line 113
    .line 114
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$302(Landroid/media/BufferingParams;I)I

    .line 115
    .line 116
    .line 117
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 118
    .line 119
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$402(Landroid/media/BufferingParams;I)I

    .line 120
    .line 121
    .line 122
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 123
    .line 124
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$502(Landroid/media/BufferingParams;I)I

    .line 125
    .line 126
    .line 127
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 128
    .line 129
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$602(Landroid/media/BufferingParams;I)I

    .line 130
    .line 131
    .line 132
    iget v1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    .line 133
    .line 134
    invoke-static {v0, v1}, Landroid/media/BufferingParams;->access$702(Landroid/media/BufferingParams;I)I

    .line 135
    .line 136
    .line 137
    return-object v0
.end method

.method public setInitialBufferingMode(I)Landroid/media/BufferingParams$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Illegal buffering mode "

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialBufferingMode:I

    .line 26
    .line 27
    return-object p0
.end method

.method public setInitialBufferingWatermarkKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkKB:I

    return-object p0
.end method

.method public setInitialBufferingWatermarkMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mInitialWatermarkMs:I

    return-object p0
.end method

.method public setRebufferingMode(I)Landroid/media/BufferingParams$Builder;
    .locals 2

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_1

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-ne p1, v0, :cond_0

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 14
    .line 15
    const-string v1, "Illegal buffering mode "

    .line 16
    .line 17
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object p1

    .line 21
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 22
    .line 23
    .line 24
    throw v0

    .line 25
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingMode:I

    .line 26
    .line 27
    return-object p0
.end method

.method public setRebufferingWatermarkHighKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    return-object p0
.end method

.method public setRebufferingWatermarkHighMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    return-object p0
.end method

.method public setRebufferingWatermarkLowKB(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    return-object p0
.end method

.method public setRebufferingWatermarkLowMs(I)Landroid/media/BufferingParams$Builder;
    .locals 0

    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    return-object p0
.end method

.method public setRebufferingWatermarksKB(II)Landroid/media/BufferingParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowKB:I

    .line 2
    .line 3
    iput p2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighKB:I

    .line 4
    .line 5
    return-object p0
.end method

.method public setRebufferingWatermarksMs(II)Landroid/media/BufferingParams$Builder;
    .locals 0

    .line 1
    iput p1, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkLowMs:I

    .line 2
    .line 3
    iput p2, p0, Landroid/media/BufferingParams$Builder;->mRebufferingWatermarkHighMs:I

    .line 4
    .line 5
    return-object p0
.end method
