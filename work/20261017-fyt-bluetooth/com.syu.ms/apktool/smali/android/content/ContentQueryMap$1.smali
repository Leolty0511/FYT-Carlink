.class Landroid/content/ContentQueryMap$1;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/content/ContentQueryMap;->setKeepUpdated(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Landroid/content/ContentQueryMap;


# direct methods
.method public constructor <init>(Landroid/content/ContentQueryMap;Landroid/os/Handler;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {p1}, Ljava/util/Observable;->countObservers()I

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    invoke-virtual {p1}, Landroid/content/ContentQueryMap;->requery()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p0, Landroid/content/ContentQueryMap$1;->this$0:Landroid/content/ContentQueryMap;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Landroid/content/ContentQueryMap;->access$002(Landroid/content/ContentQueryMap;Z)Z

    :goto_0
    return-void
.end method
