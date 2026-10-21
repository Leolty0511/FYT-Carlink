.class public Landroid/media/AudioFormat$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mChannelIndexMask:I

.field private mChannelMask:I

.field private mEncoding:I

.field private mPropertySetMask:I

.field private mSampleRate:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 3
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 4
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 5
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 6
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioFormat;)V
    .locals 1

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 9
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 10
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 11
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 12
    iput v0, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 13
    invoke-static {p1}, Landroid/media/AudioFormat;->access$000(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 14
    invoke-static {p1}, Landroid/media/AudioFormat;->access$100(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 15
    invoke-static {p1}, Landroid/media/AudioFormat;->access$200(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 16
    invoke-static {p1}, Landroid/media/AudioFormat;->access$300(Landroid/media/AudioFormat;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 17
    invoke-static {p1}, Landroid/media/AudioFormat;->access$400(Landroid/media/AudioFormat;)I

    move-result p1

    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    return-void
.end method


# virtual methods
.method public build()Landroid/media/AudioFormat;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/AudioFormat;

    .line 2
    .line 3
    const/16 v1, 0x7bc

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    invoke-direct {v0, v1, v2}, Landroid/media/AudioFormat;-><init>(ILandroid/media/AudioFormat$1;)V

    .line 7
    .line 8
    .line 9
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 10
    .line 11
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$002(Landroid/media/AudioFormat;I)I

    .line 12
    .line 13
    .line 14
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$102(Landroid/media/AudioFormat;I)I

    .line 17
    .line 18
    .line 19
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 20
    .line 21
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$202(Landroid/media/AudioFormat;I)I

    .line 22
    .line 23
    .line 24
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 25
    .line 26
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$302(Landroid/media/AudioFormat;I)I

    .line 27
    .line 28
    .line 29
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 30
    .line 31
    invoke-static {v0, v1}, Landroid/media/AudioFormat;->access$402(Landroid/media/AudioFormat;I)I

    .line 32
    .line 33
    .line 34
    return-object v0
.end method

.method public setChannelIndexMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Mismatched channel count for index mask "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 49
    .line 50
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 51
    .line 52
    or-int/lit8 p1, p1, 0x8

    .line 53
    .line 54
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v0, "Invalid zero channel index mask"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public setChannelMask(I)Landroid/media/AudioFormat$Builder;
    .locals 3

    .line 1
    if-eqz p1, :cond_2

    .line 2
    .line 3
    iget v0, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    invoke-static {p1}, Ljava/lang/Integer;->bitCount(I)I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget v1, p0, Landroid/media/AudioFormat$Builder;->mChannelIndexMask:I

    .line 12
    .line 13
    invoke-static {v1}, Ljava/lang/Integer;->bitCount(I)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-ne v0, v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 21
    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    .line 23
    .line 24
    const-string v2, "Mismatched channel count for mask "

    .line 25
    .line 26
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 27
    .line 28
    .line 29
    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    .line 30
    .line 31
    .line 32
    move-result-object p1

    .line 33
    invoke-virtual {p1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw v0

    .line 48
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mChannelMask:I

    .line 49
    .line 50
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 51
    .line 52
    or-int/lit8 p1, p1, 0x4

    .line 53
    .line 54
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 55
    .line 56
    return-object p0

    .line 57
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 58
    .line 59
    const-string v0, "Invalid zero channel mask"

    .line 60
    .line 61
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 62
    .line 63
    .line 64
    throw p1
.end method

.method public setEncoding(I)Landroid/media/AudioFormat$Builder;
    .locals 2

    .line 1
    const/16 v0, 0xd

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    packed-switch p1, :pswitch_data_0

    .line 6
    .line 7
    .line 8
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 9
    .line 10
    const-string v1, "Invalid encoding "

    .line 11
    .line 12
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    throw v0

    .line 20
    :pswitch_0
    const/4 p1, 0x2

    .line 21
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    :pswitch_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mEncoding:I

    .line 25
    .line 26
    :goto_0
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 27
    .line 28
    or-int/lit8 p1, p1, 0x1

    .line 29
    .line 30
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 31
    .line 32
    return-object p0

    .line 33
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public setSampleRate(I)Landroid/media/AudioFormat$Builder;
    .locals 2

    .line 1
    const/16 v0, 0xfa0

    .line 2
    .line 3
    if-lt p1, v0, :cond_0

    .line 4
    .line 5
    const v0, 0x2ee00

    .line 6
    .line 7
    .line 8
    if-le p1, v0, :cond_1

    .line 9
    .line 10
    :cond_0
    if-nez p1, :cond_2

    .line 11
    .line 12
    :cond_1
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mSampleRate:I

    .line 13
    .line 14
    iget p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 15
    .line 16
    or-int/lit8 p1, p1, 0x2

    .line 17
    .line 18
    iput p1, p0, Landroid/media/AudioFormat$Builder;->mPropertySetMask:I

    .line 19
    .line 20
    return-object p0

    .line 21
    :cond_2
    new-instance v0, Ljava/lang/IllegalArgumentException;

    .line 22
    .line 23
    const-string v1, "Invalid sample rate "

    .line 24
    .line 25
    invoke-static {v1, p1}, Landroid/accessibilityservice/c;->d(Ljava/lang/String;I)Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    throw v0
.end method
