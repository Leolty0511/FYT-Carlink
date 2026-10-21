.class Landroid/view/ViewRootImpl$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/hardware/display/DisplayManager$DisplayListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/view/ViewRootImpl;


# direct methods
.method public constructor <init>(Landroid/view/ViewRootImpl;)V
    .locals 0

    iput-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private toViewScreenState(I)I
    .locals 1

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method


# virtual methods
.method public onDisplayAdded(I)V
    .locals 0

    return-void
.end method

.method public onDisplayChanged(I)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    .line 2
    .line 3
    iget-object v1, v0, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 4
    .line 5
    if-eqz v1, :cond_1

    .line 6
    .line 7
    iget-object v0, v0, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/view/Display;->getDisplayId()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-ne v0, p1, :cond_1

    .line 14
    .line 15
    iget-object p1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    .line 16
    .line 17
    iget-object v0, p1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 18
    .line 19
    iget v0, v0, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 20
    .line 21
    iget-object p1, p1, Landroid/view/ViewRootImpl;->mDisplay:Landroid/view/Display;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/Display;->getState()I

    .line 24
    .line 25
    .line 26
    move-result p1

    .line 27
    if-eq v0, p1, :cond_1

    .line 28
    .line 29
    iget-object v1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    .line 30
    .line 31
    iget-object v2, v1, Landroid/view/ViewRootImpl;->mAttachInfo:Landroid/view/View$AttachInfo;

    .line 32
    .line 33
    iput p1, v2, Landroid/view/View$AttachInfo;->mDisplayState:I

    .line 34
    .line 35
    invoke-virtual {v1}, Landroid/view/ViewRootImpl;->pokeDrawLockIfNeeded()V

    .line 36
    .line 37
    .line 38
    if-eqz v0, :cond_1

    .line 39
    .line 40
    invoke-direct {p0, v0}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    .line 41
    .line 42
    .line 43
    move-result v1

    .line 44
    invoke-direct {p0, p1}, Landroid/view/ViewRootImpl$1;->toViewScreenState(I)I

    .line 45
    .line 46
    .line 47
    move-result p1

    .line 48
    if-eq v1, p1, :cond_0

    .line 49
    .line 50
    iget-object v1, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    .line 51
    .line 52
    iget-object v1, v1, Landroid/view/ViewRootImpl;->mView:Landroid/view/View;

    .line 53
    .line 54
    invoke-virtual {v1, p1}, Landroid/view/View;->dispatchScreenStateChanged(I)V

    .line 55
    .line 56
    .line 57
    :cond_0
    const/4 p1, 0x1

    .line 58
    if-ne v0, p1, :cond_1

    .line 59
    .line 60
    iget-object v0, p0, Landroid/view/ViewRootImpl$1;->this$0:Landroid/view/ViewRootImpl;

    .line 61
    .line 62
    iput-boolean p1, v0, Landroid/view/ViewRootImpl;->mFullRedrawNeeded:Z

    .line 63
    .line 64
    invoke-virtual {v0}, Landroid/view/ViewRootImpl;->scheduleTraversals()V

    .line 65
    .line 66
    .line 67
    :cond_1
    return-void
.end method

.method public onDisplayRemoved(I)V
    .locals 0

    return-void
.end method
