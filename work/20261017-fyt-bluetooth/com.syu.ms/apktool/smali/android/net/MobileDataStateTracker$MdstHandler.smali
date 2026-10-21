.class Landroid/net/MobileDataStateTracker$MdstHandler;
.super Landroid/os/Handler;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/MobileDataStateTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MdstHandler"
.end annotation


# instance fields
.field private mMdst:Landroid/net/MobileDataStateTracker;


# direct methods
.method public constructor <init>(Landroid/os/Looper;Landroid/net/MobileDataStateTracker;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 2
    iput-object p2, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2

    .line 1
    iget v0, p1, Landroid/os/Message;->what:I

    const v1, 0x11000

    if-eq v0, v1, :cond_1

    const p1, 0x11004

    if-eq v0, p1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object p1, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    const/4 v0, 0x0

    invoke-static {p1, v0}, Landroid/net/MobileDataStateTracker;->access$202(Landroid/net/MobileDataStateTracker;Lu/b;)Lu/b;

    goto :goto_0

    .line 3
    :cond_1
    iget v0, p1, Landroid/os/Message;->arg1:I

    if-nez v0, :cond_2

    .line 4
    iget-object v0, p0, Landroid/net/MobileDataStateTracker$MdstHandler;->mMdst:Landroid/net/MobileDataStateTracker;

    iget-object p1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast p1, Lu/b;

    invoke-static {v0, p1}, Landroid/net/MobileDataStateTracker;->access$202(Landroid/net/MobileDataStateTracker;Lu/b;)Lu/b;

    :cond_2
    :goto_0
    return-void
.end method
