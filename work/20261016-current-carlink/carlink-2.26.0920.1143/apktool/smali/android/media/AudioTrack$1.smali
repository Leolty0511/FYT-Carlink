.class Landroid/media/AudioTrack$1;
.super Ljava/lang/Thread;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/AudioTrack;->play()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/AudioTrack;

.field final synthetic val$delay:I


# direct methods
.method public constructor <init>(Landroid/media/AudioTrack;I)V
    .locals 0

    iput-object p1, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    iput p2, p0, Landroid/media/AudioTrack$1;->val$delay:I

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Landroid/media/AudioTrack$1;->val$delay:I

    .line 2
    .line 3
    int-to-long v0, v0

    .line 4
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    .line 6
    .line 7
    goto :goto_0

    .line 8
    :catch_0
    move-exception v0

    .line 9
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 10
    .line 11
    .line 12
    :goto_0
    iget-object v0, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    .line 13
    .line 14
    const/4 v1, 0x0

    .line 15
    invoke-virtual {v0, v1}, Landroid/media/PlayerBase;->baseSetStartDelayMs(I)V

    .line 16
    .line 17
    .line 18
    :try_start_1
    iget-object v0, p0, Landroid/media/AudioTrack$1;->this$0:Landroid/media/AudioTrack;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/media/AudioTrack;->access$100(Landroid/media/AudioTrack;)V
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1

    .line 21
    .line 22
    .line 23
    :catch_1
    return-void
.end method
