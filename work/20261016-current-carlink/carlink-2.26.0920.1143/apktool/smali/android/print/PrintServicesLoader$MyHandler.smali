.class Landroid/print/PrintServicesLoader$MyHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/print/PrintServicesLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyHandler"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/print/PrintServicesLoader;


# direct methods
.method public constructor <init>(Landroid/print/PrintServicesLoader;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/content/Loader;->getContext()Landroid/content/Context;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 12
    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/content/Loader;->isStarted()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    iget-object v0, p0, Landroid/print/PrintServicesLoader$MyHandler;->this$0:Landroid/print/PrintServicesLoader;

    .line 10
    .line 11
    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p1, Ljava/util/List;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Landroid/content/Loader;->deliverResult(Ljava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
