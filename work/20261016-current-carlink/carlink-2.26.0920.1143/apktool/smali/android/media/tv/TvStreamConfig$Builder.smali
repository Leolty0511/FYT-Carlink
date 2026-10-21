.class public final Landroid/media/tv/TvStreamConfig$Builder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvStreamConfig;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Builder"
.end annotation


# instance fields
.field private mGeneration:Ljava/lang/Integer;

.field private mMaxHeight:Ljava/lang/Integer;

.field private mMaxWidth:Ljava/lang/Integer;

.field private mStreamId:Ljava/lang/Integer;

.field private mType:Ljava/lang/Integer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public build()Landroid/media/tv/TvStreamConfig;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    .line 10
    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    .line 14
    .line 15
    if-eqz v0, :cond_0

    .line 16
    .line 17
    iget-object v0, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    .line 18
    .line 19
    if-eqz v0, :cond_0

    .line 20
    .line 21
    new-instance v0, Landroid/media/tv/TvStreamConfig;

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    invoke-direct {v0, v1}, Landroid/media/tv/TvStreamConfig;-><init>(Landroid/media/tv/TvStreamConfig$1;)V

    .line 25
    .line 26
    .line 27
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    .line 28
    .line 29
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 30
    .line 31
    .line 32
    move-result v1

    .line 33
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$102(Landroid/media/tv/TvStreamConfig;I)I

    .line 34
    .line 35
    .line 36
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    .line 37
    .line 38
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 39
    .line 40
    .line 41
    move-result v1

    .line 42
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$202(Landroid/media/tv/TvStreamConfig;I)I

    .line 43
    .line 44
    .line 45
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    .line 46
    .line 47
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 48
    .line 49
    .line 50
    move-result v1

    .line 51
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$302(Landroid/media/tv/TvStreamConfig;I)I

    .line 52
    .line 53
    .line 54
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    .line 55
    .line 56
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 57
    .line 58
    .line 59
    move-result v1

    .line 60
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$402(Landroid/media/tv/TvStreamConfig;I)I

    .line 61
    .line 62
    .line 63
    iget-object v1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    .line 64
    .line 65
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    .line 66
    .line 67
    .line 68
    move-result v1

    .line 69
    invoke-static {v0, v1}, Landroid/media/tv/TvStreamConfig;->access$502(Landroid/media/tv/TvStreamConfig;I)I

    .line 70
    .line 71
    .line 72
    return-object v0

    .line 73
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    .line 74
    .line 75
    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    .line 76
    .line 77
    .line 78
    throw v0
.end method

.method public generation(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mGeneration:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxHeight(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxHeight:Ljava/lang/Integer;

    return-object p0
.end method

.method public maxWidth(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mMaxWidth:Ljava/lang/Integer;

    return-object p0
.end method

.method public streamId(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mStreamId:Ljava/lang/Integer;

    return-object p0
.end method

.method public type(I)Landroid/media/tv/TvStreamConfig$Builder;
    .locals 0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    iput-object p1, p0, Landroid/media/tv/TvStreamConfig$Builder;->mType:Ljava/lang/Integer;

    return-object p0
.end method
