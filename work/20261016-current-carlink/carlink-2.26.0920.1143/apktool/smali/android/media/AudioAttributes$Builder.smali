.class public Landroid/media/AudioAttributes$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/AudioAttributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private mBundle:Landroid/os/Bundle;

.field private mContentType:I

.field private mFlags:I

.field private mSource:I

.field private mTags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mUsage:I


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 3
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    const/4 v1, -0x1

    .line 4
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 5
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 6
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    return-void
.end method

.method public constructor <init>(Landroid/media/AudioAttributes;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 9
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    const/4 v1, -0x1

    .line 10
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 11
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 12
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 13
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$000(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 14
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$100(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 15
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$200(Landroid/media/AudioAttributes;)I

    move-result v0

    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 16
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$300(Landroid/media/AudioAttributes;)Ljava/util/HashSet;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/HashSet;

    iput-object p1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public addBundle(Landroid/os/Bundle;)Landroid/media/AudioAttributes$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_1

    .line 2
    .line 3
    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    new-instance v0, Landroid/os/Bundle;

    .line 8
    .line 9
    invoke-direct {v0, p1}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 10
    .line 11
    .line 12
    iput-object v0, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-virtual {v0, p1}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 16
    .line 17
    .line 18
    :goto_0
    return-object p0

    .line 19
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 20
    .line 21
    const-string v0, "Illegal null bundle"

    .line 22
    .line 23
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 24
    .line 25
    .line 26
    throw p1
.end method

.method public addTag(Ljava/lang/String;)Landroid/media/AudioAttributes$Builder;
    .locals 1

    iget-object v0, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-object p0
.end method

.method public build()Landroid/media/AudioAttributes;
    .locals 3

    .line 1
    new-instance v0, Landroid/media/AudioAttributes;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Landroid/media/AudioAttributes;-><init>(Landroid/media/AudioAttributes$1;)V

    .line 5
    .line 6
    .line 7
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$102(Landroid/media/AudioAttributes;I)I

    .line 10
    .line 11
    .line 12
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 13
    .line 14
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$002(Landroid/media/AudioAttributes;I)I

    .line 15
    .line 16
    .line 17
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 18
    .line 19
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$502(Landroid/media/AudioAttributes;I)I

    .line 20
    .line 21
    .line 22
    iget v1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 23
    .line 24
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$202(Landroid/media/AudioAttributes;I)I

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/util/HashSet;->clone()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Ljava/util/HashSet;

    .line 34
    .line 35
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$302(Landroid/media/AudioAttributes;Ljava/util/HashSet;)Ljava/util/HashSet;

    .line 36
    .line 37
    .line 38
    const-string v1, ";"

    .line 39
    .line 40
    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mTags:Ljava/util/HashSet;

    .line 41
    .line 42
    invoke-static {v1, v2}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object v1

    .line 46
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$602(Landroid/media/AudioAttributes;Ljava/lang/String;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    iget-object v1, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 50
    .line 51
    if-eqz v1, :cond_0

    .line 52
    .line 53
    new-instance v1, Landroid/os/Bundle;

    .line 54
    .line 55
    iget-object v2, p0, Landroid/media/AudioAttributes$Builder;->mBundle:Landroid/os/Bundle;

    .line 56
    .line 57
    invoke-direct {v1, v2}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    .line 58
    .line 59
    .line 60
    invoke-static {v0, v1}, Landroid/media/AudioAttributes;->access$702(Landroid/media/AudioAttributes;Landroid/os/Bundle;)Landroid/os/Bundle;

    .line 61
    .line 62
    .line 63
    :cond_0
    return-object v0
.end method

.method public replaceFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    and-int/lit16 p1, p1, 0x3ff

    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 3

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x5

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x6

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x7

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/16 v0, 0x9

    .line 16
    .line 17
    if-eq p1, v0, :cond_0

    .line 18
    .line 19
    const/16 v0, 0xa

    .line 20
    .line 21
    if-eq p1, v0, :cond_0

    .line 22
    .line 23
    const-string v0, "Invalid capture preset "

    .line 24
    .line 25
    const-string v1, " for AudioAttributes"

    .line 26
    .line 27
    const-string v2, "AudioAttributes"

    .line 28
    .line 29
    invoke-static {v0, p1, v1, v2}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 34
    .line 35
    :goto_0
    return-object p0
.end method

.method public setContentType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    const/4 v0, 0x1

    .line 4
    if-eq p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x2

    .line 7
    if-eq p1, v0, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x3

    .line 10
    if-eq p1, v0, :cond_0

    .line 11
    .line 12
    const/4 v0, 0x4

    .line 13
    if-eq p1, v0, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 20
    .line 21
    :goto_0
    return-object p0
.end method

.method public setFlags(I)Landroid/media/AudioAttributes$Builder;
    .locals 1

    and-int/lit16 p1, p1, 0x3ff

    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    or-int/2addr p1, v0

    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    return-object p0
.end method

.method public setInternalCapturePreset(I)Landroid/media/AudioAttributes$Builder;
    .locals 1

    .line 1
    const/16 v0, 0x7cf

    .line 2
    .line 3
    if-eq p1, v0, :cond_1

    .line 4
    .line 5
    const/16 v0, 0x8

    .line 6
    .line 7
    if-eq p1, v0, :cond_1

    .line 8
    .line 9
    const/16 v0, 0x7ce

    .line 10
    .line 11
    if-ne p1, v0, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setCapturePreset(I)Landroid/media/AudioAttributes$Builder;

    .line 15
    .line 16
    .line 17
    goto :goto_1

    .line 18
    :cond_1
    :goto_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mSource:I

    .line 19
    .line 20
    :goto_1
    return-object p0
.end method

.method public setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 3

    .line 1
    const/4 v0, 0x1

    .line 2
    const/4 v1, 0x4

    .line 3
    packed-switch p1, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    const-string v0, "Invalid stream type "

    .line 7
    .line 8
    const-string v1, " for AudioAttributes"

    .line 9
    .line 10
    const-string v2, "AudioAttributes"

    .line 11
    .line 12
    invoke-static {v0, p1, v1, v2}, Landroid/app/m;->q(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    goto :goto_1

    .line 16
    :pswitch_0
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 17
    .line 18
    goto :goto_1

    .line 19
    :pswitch_1
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 20
    .line 21
    goto :goto_1

    .line 22
    :pswitch_2
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 23
    .line 24
    goto :goto_1

    .line 25
    :pswitch_3
    iget v2, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 26
    .line 27
    or-int/2addr v0, v2

    .line 28
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :pswitch_4
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 32
    .line 33
    iget v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 34
    .line 35
    or-int/2addr v0, v1

    .line 36
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mFlags:I

    .line 37
    .line 38
    goto :goto_1

    .line 39
    :pswitch_5
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 40
    .line 41
    goto :goto_1

    .line 42
    :pswitch_6
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 43
    .line 44
    goto :goto_1

    .line 45
    :pswitch_7
    const/4 v0, 0x2

    .line 46
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 47
    .line 48
    goto :goto_1

    .line 49
    :pswitch_8
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :goto_0
    :pswitch_9
    iput v1, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 53
    .line 54
    goto :goto_1

    .line 55
    :pswitch_a
    iput v0, p0, Landroid/media/AudioAttributes$Builder;->mContentType:I

    .line 56
    .line 57
    :goto_1
    invoke-static {p1}, Landroid/media/AudioAttributes;->access$800(I)I

    .line 58
    .line 59
    .line 60
    move-result p1

    .line 61
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 62
    .line 63
    return-object p0

    .line 64
    nop

    .line 65
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;
    .locals 1

    .line 1
    const/16 v0, 0xa

    .line 2
    .line 3
    if-eq p1, v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/media/AudioAttributes$Builder;->setInternalLegacyStreamType(I)Landroid/media/AudioAttributes$Builder;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 11
    .line 12
    const-string v0, "STREAM_ACCESSIBILITY is not a legacy stream type that was used for audio playback"

    .line 13
    .line 14
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p1
.end method

.method public setUsage(I)Landroid/media/AudioAttributes$Builder;
    .locals 0

    .line 1
    packed-switch p1, :pswitch_data_0

    .line 2
    .line 3
    .line 4
    const/4 p1, 0x0

    .line 5
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :pswitch_0
    iput p1, p0, Landroid/media/AudioAttributes$Builder;->mUsage:I

    .line 9
    .line 10
    :goto_0
    return-object p0

    .line 11
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
