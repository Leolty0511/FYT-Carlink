.class Landroid/media/SubtitleController$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/SubtitleController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/SubtitleController;


# direct methods
.method public constructor <init>(Landroid/media/SubtitleController;)V
    .locals 0

    iput-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 3

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    if-eq v0, v1, :cond_3

    .line 5
    .line 6
    const/4 v2, 0x2

    .line 7
    if-eq v0, v2, :cond_2

    .line 8
    .line 9
    const/4 v2, 0x3

    .line 10
    if-eq v0, v2, :cond_1

    .line 11
    .line 12
    const/4 p1, 0x4

    .line 13
    if-eq v0, p1, :cond_0

    .line 14
    .line 15
    const/4 p1, 0x0

    .line 16
    return p1

    .line 17
    :cond_0
    iget-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    .line 18
    .line 19
    invoke-static {p1}, Landroid/media/SubtitleController;->access$300(Landroid/media/SubtitleController;)V

    .line 20
    .line 21
    .line 22
    return v1

    .line 23
    :cond_1
    iget-object v0, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    .line 24
    .line 25
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 26
    .line 27
    check-cast p1, Landroid/media/SubtitleTrack;

    .line 28
    .line 29
    invoke-static {v0, p1}, Landroid/media/SubtitleController;->access$200(Landroid/media/SubtitleController;Landroid/media/SubtitleTrack;)V

    .line 30
    .line 31
    .line 32
    return v1

    .line 33
    :cond_2
    iget-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    .line 34
    .line 35
    invoke-static {p1}, Landroid/media/SubtitleController;->access$100(Landroid/media/SubtitleController;)V

    .line 36
    .line 37
    .line 38
    return v1

    .line 39
    :cond_3
    iget-object p1, p0, Landroid/media/SubtitleController$1;->this$0:Landroid/media/SubtitleController;

    .line 40
    .line 41
    invoke-static {p1}, Landroid/media/SubtitleController;->access$000(Landroid/media/SubtitleController;)V

    .line 42
    .line 43
    .line 44
    return v1
.end method
