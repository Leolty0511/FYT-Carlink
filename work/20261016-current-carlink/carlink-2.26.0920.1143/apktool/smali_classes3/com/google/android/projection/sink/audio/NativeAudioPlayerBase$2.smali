.class Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/MediaPlayer$OnCompletionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;


# direct methods
.method public constructor <init>(Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$2;->this$0:Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Landroid/media/MediaPlayer;)V
    .locals 1

    .line 1
    const-string p1, "AHU.NATIVE_AUDIO"

    .line 2
    .line 3
    const-string v0, "native audio completed"

    .line 4
    .line 5
    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 6
    .line 7
    .line 8
    iget-object p1, p0, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase$2;->this$0:Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;

    .line 9
    .line 10
    invoke-virtual {p1}, Lcom/google/android/projection/sink/audio/NativeAudioPlayerBase;->stop()V

    .line 11
    .line 12
    .line 13
    return-void
.end method
