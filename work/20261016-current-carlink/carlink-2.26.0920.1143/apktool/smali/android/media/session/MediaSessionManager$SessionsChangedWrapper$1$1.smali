.class Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->onActiveSessionsChanged(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

.field final synthetic val$tokens:Ljava/util/List;


# direct methods
.method public constructor <init>(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    iput-object p2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    .line 2
    .line 3
    iget-object v0, v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .line 4
    .line 5
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$300(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    new-instance v1, Ljava/util/ArrayList;

    .line 12
    .line 13
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 14
    .line 15
    .line 16
    iget-object v2, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    .line 17
    .line 18
    invoke-interface {v2}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v2

    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v2, :cond_0

    .line 24
    .line 25
    new-instance v4, Landroid/media/session/MediaController;

    .line 26
    .line 27
    iget-object v5, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->val$tokens:Ljava/util/List;

    .line 28
    .line 29
    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    check-cast v5, Landroid/media/session/MediaSession$Token;

    .line 34
    .line 35
    invoke-direct {v4, v0, v5}, Landroid/media/session/MediaController;-><init>(Landroid/content/Context;Landroid/media/session/MediaSession$Token;)V

    .line 36
    .line 37
    .line 38
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 39
    .line 40
    .line 41
    add-int/lit8 v3, v3, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_0
    iget-object v0, p0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1$1;->this$1:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;

    .line 45
    .line 46
    iget-object v0, v0, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper$1;->this$0:Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;

    .line 47
    .line 48
    invoke-static {v0}, Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;->access$400(Landroid/media/session/MediaSessionManager$SessionsChangedWrapper;)Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;

    .line 49
    .line 50
    .line 51
    move-result-object v0

    .line 52
    if-eqz v0, :cond_1

    .line 53
    .line 54
    invoke-interface {v0, v1}, Landroid/media/session/MediaSessionManager$OnActiveSessionsChangedListener;->onActiveSessionsChanged(Ljava/util/List;)V

    .line 55
    .line 56
    .line 57
    :cond_1
    return-void
.end method
