.class Lcom/syu/bt/util/MyMediaPlayer$1;
.super Ljava/lang/Object;
.source "MyMediaPlayer.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/util/MyMediaPlayer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1
    return-void
.end method


# virtual methods
.method public onAudioFocusChange(I)V
    .locals 1
    .param p1, "focusChange"    # I

    .prologue
    .line 29
    const/4 v0, -0x2

    if-eq p1, v0, :cond_0

    .line 34
    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 39
    const/4 v0, -0x3

    if-eq p1, v0, :cond_0

    .line 47
    :cond_0
    return-void
.end method
