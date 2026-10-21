.class public Lcom/syu/bt/recsound/RecSound;
.super Ljava/lang/Object;
.source "RecSound.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/syu/bt/recsound/RecSound$PlayTask;,
        Lcom/syu/bt/recsound/RecSound$RecordTask;
    }
.end annotation


# instance fields
.field private audioEncoding:I

.field private channelConfig:I

.field private frequence:I

.field private iRecAudioFile:Ljava/io/File;

.field private iRecFileNameString:Ljava/lang/String;

.field private isPlaying:Z

.field private isRecording:Z

.field private player:Lcom/syu/bt/recsound/RecSound$PlayTask;

.field private recorder:Lcom/syu/bt/recsound/RecSound$RecordTask;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x2

    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 23
    const-string v0, "recording_"

    iput-object v0, p0, Lcom/syu/bt/recsound/RecSound;->iRecFileNameString:Ljava/lang/String;

    .line 28
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/syu/bt/recsound/RecSound;->isRecording:Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/syu/bt/recsound/RecSound;->isPlaying:Z

    .line 30
    const/16 v0, 0x1f40

    iput v0, p0, Lcom/syu/bt/recsound/RecSound;->frequence:I

    .line 32
    iput v1, p0, Lcom/syu/bt/recsound/RecSound;->channelConfig:I

    .line 33
    iput v1, p0, Lcom/syu/bt/recsound/RecSound;->audioEncoding:I

    .line 21
    return-void
.end method

.method static synthetic access$0(Lcom/syu/bt/recsound/RecSound;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/syu/bt/recsound/RecSound;->isRecording:Z

    return-void
.end method

.method static synthetic access$1(Lcom/syu/bt/recsound/RecSound;)Ljava/io/File;
    .locals 1

    .prologue
    .line 22
    iget-object v0, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    return-object v0
.end method

.method static synthetic access$2(Lcom/syu/bt/recsound/RecSound;)I
    .locals 1

    .prologue
    .line 30
    iget v0, p0, Lcom/syu/bt/recsound/RecSound;->frequence:I

    return v0
.end method

.method static synthetic access$3(Lcom/syu/bt/recsound/RecSound;)I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/syu/bt/recsound/RecSound;->channelConfig:I

    return v0
.end method

.method static synthetic access$4(Lcom/syu/bt/recsound/RecSound;)I
    .locals 1

    .prologue
    .line 33
    iget v0, p0, Lcom/syu/bt/recsound/RecSound;->audioEncoding:I

    return v0
.end method

.method static synthetic access$5(Lcom/syu/bt/recsound/RecSound;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/syu/bt/recsound/RecSound;->isRecording:Z

    return v0
.end method

.method static synthetic access$6(Lcom/syu/bt/recsound/RecSound;Z)V
    .locals 0

    .prologue
    .line 28
    iput-boolean p1, p0, Lcom/syu/bt/recsound/RecSound;->isPlaying:Z

    return-void
.end method

.method static synthetic access$7(Lcom/syu/bt/recsound/RecSound;)Z
    .locals 1

    .prologue
    .line 28
    iget-boolean v0, p0, Lcom/syu/bt/recsound/RecSound;->isPlaying:Z

    return v0
.end method


# virtual methods
.method public playRecord()V
    .locals 2

    .prologue
    .line 62
    new-instance v0, Lcom/syu/bt/recsound/RecSound$PlayTask;

    invoke-direct {v0, p0}, Lcom/syu/bt/recsound/RecSound$PlayTask;-><init>(Lcom/syu/bt/recsound/RecSound;)V

    iput-object v0, p0, Lcom/syu/bt/recsound/RecSound;->player:Lcom/syu/bt/recsound/RecSound$PlayTask;

    .line 63
    iget-object v0, p0, Lcom/syu/bt/recsound/RecSound;->player:Lcom/syu/bt/recsound/RecSound$PlayTask;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/syu/bt/recsound/RecSound$PlayTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 64
    return-void
.end method

.method public startRecord()V
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 38
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 40
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "/mnt/sdcard"

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 41
    .local v1, "iRecAudioDir":Ljava/io/File;
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound;->iRecFileNameString:Ljava/lang/String;

    const-string v3, ".pcm"

    invoke-static {v2, v3, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    .line 44
    new-instance v2, Lcom/syu/bt/recsound/RecSound$RecordTask;

    invoke-direct {v2, p0}, Lcom/syu/bt/recsound/RecSound$RecordTask;-><init>(Lcom/syu/bt/recsound/RecSound;)V

    iput-object v2, p0, Lcom/syu/bt/recsound/RecSound;->recorder:Lcom/syu/bt/recsound/RecSound$RecordTask;

    .line 45
    iget-object v2, p0, Lcom/syu/bt/recsound/RecSound;->recorder:Lcom/syu/bt/recsound/RecSound$RecordTask;

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Void;

    invoke-virtual {v2, v3}, Lcom/syu/bt/recsound/RecSound$RecordTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    .end local v1    # "iRecAudioDir":Ljava/io/File;
    :goto_0
    return-void

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public stopRecord()V
    .locals 2

    .prologue
    .line 53
    :try_start_0
    iget-object v1, p0, Lcom/syu/bt/recsound/RecSound;->iRecAudioFile:Ljava/io/File;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/syu/bt/recsound/RecSound;->isRecording:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :cond_0
    :goto_0
    return-void

    .line 56
    :catch_0
    move-exception v0

    .line 57
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method
