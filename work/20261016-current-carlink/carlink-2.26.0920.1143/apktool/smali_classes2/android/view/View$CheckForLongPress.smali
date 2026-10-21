.class final Landroid/view/View$CheckForLongPress;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "CheckForLongPress"
.end annotation


# instance fields
.field private mOriginalPressedState:Z

.field private mOriginalWindowAttachCount:I

.field private mX:F

.field private mY:F

.field final synthetic this$0:Landroid/view/View;


# direct methods
.method private constructor <init>(Landroid/view/View;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/view/View;Landroid/view/View$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/view/View$CheckForLongPress;-><init>(Landroid/view/View;)V

    return-void
.end method


# virtual methods
.method public rememberPressedState()V
    .locals 1

    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isPressed()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    return-void
.end method

.method public rememberWindowAttachCount()V
    .locals 1

    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    iget v0, v0, Landroid/view/View;->mWindowAttachCount:I

    iput v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/view/View$CheckForLongPress;->mOriginalPressedState:Z

    .line 2
    .line 3
    iget-object v1, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/view/View;->isPressed()Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    .line 12
    .line 13
    iget-object v1, v0, Landroid/view/View;->mParent:Landroid/view/ViewParent;

    .line 14
    .line 15
    if-eqz v1, :cond_0

    .line 16
    .line 17
    iget v1, p0, Landroid/view/View$CheckForLongPress;->mOriginalWindowAttachCount:I

    .line 18
    .line 19
    iget v2, v0, Landroid/view/View;->mWindowAttachCount:I

    .line 20
    .line 21
    if-ne v1, v2, :cond_0

    .line 22
    .line 23
    iget v1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    .line 24
    .line 25
    iget v2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    .line 26
    .line 27
    invoke-virtual {v0, v1, v2}, Landroid/view/View;->performLongClick(FF)Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    if-eqz v0, :cond_0

    .line 32
    .line 33
    iget-object v0, p0, Landroid/view/View$CheckForLongPress;->this$0:Landroid/view/View;

    .line 34
    .line 35
    const/4 v1, 0x1

    .line 36
    invoke-static {v0, v1}, Landroid/view/View;->access$2802(Landroid/view/View;Z)Z

    .line 37
    .line 38
    .line 39
    :cond_0
    return-void
.end method

.method public setAnchor(FF)V
    .locals 0

    .line 1
    iput p1, p0, Landroid/view/View$CheckForLongPress;->mX:F

    .line 2
    .line 3
    iput p2, p0, Landroid/view/View$CheckForLongPress;->mY:F

    .line 4
    .line 5
    return-void
.end method
