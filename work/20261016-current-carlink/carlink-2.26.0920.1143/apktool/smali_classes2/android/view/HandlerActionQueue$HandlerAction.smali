.class Landroid/view/HandlerActionQueue$HandlerAction;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/HandlerActionQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "HandlerAction"
.end annotation


# instance fields
.field final action:Ljava/lang/Runnable;

.field final delay:J


# direct methods
.method public constructor <init>(Ljava/lang/Runnable;J)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 5
    .line 6
    iput-wide p2, p0, Landroid/view/HandlerActionQueue$HandlerAction;->delay:J

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public matches(Ljava/lang/Runnable;)Z
    .locals 1

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 4
    .line 5
    if-eqz v0, :cond_1

    .line 6
    .line 7
    :cond_0
    iget-object v0, p0, Landroid/view/HandlerActionQueue$HandlerAction;->action:Ljava/lang/Runnable;

    .line 8
    .line 9
    if-eqz v0, :cond_2

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_2

    .line 16
    .line 17
    :cond_1
    const/4 p1, 0x1

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    const/4 p1, 0x0

    .line 20
    :goto_0
    return p1
.end method
