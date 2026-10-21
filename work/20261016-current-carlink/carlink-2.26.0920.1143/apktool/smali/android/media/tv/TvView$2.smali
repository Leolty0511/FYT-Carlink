.class Landroid/media/tv/TvView$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/media/tv/TvInputManager$Session$FinishedInputEventCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/media/tv/TvView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/media/tv/TvView;


# direct methods
.method public constructor <init>(Landroid/media/tv/TvView;)V
    .locals 0

    iput-object p1, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinishedInputEvent(Ljava/lang/Object;Z)V
    .locals 0

    .line 1
    if-eqz p2, :cond_0

    .line 2
    .line 3
    return-void

    .line 4
    :cond_0
    check-cast p1, Landroid/view/InputEvent;

    .line 5
    .line 6
    iget-object p2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    .line 7
    .line 8
    invoke-virtual {p2, p1}, Landroid/media/tv/TvView;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)Z

    .line 9
    .line 10
    .line 11
    move-result p2

    .line 12
    if-eqz p2, :cond_1

    .line 13
    .line 14
    return-void

    .line 15
    :cond_1
    iget-object p2, p0, Landroid/media/tv/TvView$2;->this$0:Landroid/media/tv/TvView;

    .line 16
    .line 17
    invoke-virtual {p2}, Landroid/view/View;->getViewRootImpl()Landroid/view/ViewRootImpl;

    .line 18
    .line 19
    .line 20
    move-result-object p2

    .line 21
    if-eqz p2, :cond_2

    .line 22
    .line 23
    invoke-virtual {p2, p1}, Landroid/view/ViewRootImpl;->dispatchUnhandledInputEvent(Landroid/view/InputEvent;)V

    .line 24
    .line 25
    .line 26
    :cond_2
    return-void
.end method
