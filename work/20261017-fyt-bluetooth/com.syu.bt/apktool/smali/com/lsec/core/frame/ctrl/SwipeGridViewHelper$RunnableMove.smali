.class public Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;
.super Ljava/lang/Object;
.source "SwipeGridViewHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "RunnableMove"
.end annotation


# instance fields
.field private bRun:Z

.field fromX:I

.field stepX:I

.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

.field toX:I

.field public view:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;Landroid/view/View;II)V
    .locals 4
    .param p2, "view"    # Landroid/view/View;
    .param p3, "fromX"    # I
    .param p4, "toX"    # I

    .prologue
    .line 132
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->this$0:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 125
    const/4 v0, 0x0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stepX:I

    .line 130
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->bRun:Z

    .line 133
    iput-object p2, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    .line 134
    iput p3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    .line 135
    iput p4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    .line 136
    sub-int v0, p4, p3

    mul-int/lit8 v0, v0, 0xa

    int-to-double v0, v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    div-double/2addr v0, v2

    double-to-int v0, v0

    iput v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stepX:I

    .line 137
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 147
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 148
    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    sub-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    const/16 v4, 0xa

    if-ge v3, v4, :cond_0

    .line 149
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 150
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stopRun(Z)V

    .line 153
    :cond_0
    iget-boolean v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->bRun:Z

    if-eqz v3, :cond_1

    .line 154
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    if-eqz v3, :cond_1

    .line 155
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getScrollX()I

    move-result v3

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    if-ne v3, v4, :cond_2

    .line 156
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stopRun(Z)V

    .line 176
    :cond_1
    :goto_0
    return-void

    .line 160
    :cond_2
    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stepX:I

    add-int/2addr v3, v4

    iput v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    .line 162
    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stepX:I

    if-lez v3, :cond_3

    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    if-gt v3, v4, :cond_6

    :cond_3
    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stepX:I

    if-gez v3, :cond_4

    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    if-lt v3, v4, :cond_6

    :cond_4
    move v0, v1

    .line 163
    .local v0, "isLastStep":Z
    :goto_1
    if-eqz v0, :cond_5

    .line 164
    iget v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->toX:I

    iput v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    .line 166
    :cond_5
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    iget v4, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->fromX:I

    invoke-virtual {v3, v4, v1}, Landroid/view/View;->scrollTo(II)V

    .line 167
    iget-object v3, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->this$0:Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;

    iget-object v3, v3, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper;->gridView:Lcom/lsec/core/frame/ctrl/JGridView;

    invoke-virtual {v3}, Lcom/lsec/core/frame/ctrl/JGridView;->invalidate()V

    .line 169
    if-nez v0, :cond_7

    .line 170
    const-wide/16 v4, 0xa

    invoke-static {v2, p0, v4, v5}, Lcom/lsec/core/ipc/module/main/Main;->postRunnable_Ui(ZLjava/lang/Runnable;J)V

    goto :goto_0

    .end local v0    # "isLastStep":Z
    :cond_6
    move v0, v2

    .line 162
    goto :goto_1

    .line 172
    .restart local v0    # "isLastStep":Z
    :cond_7
    invoke-virtual {p0, v1}, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->stopRun(Z)V

    goto :goto_0
.end method

.method public stopRun(Z)V
    .locals 2
    .param p1, "bZeroScroll"    # Z

    .prologue
    const/4 v1, 0x0

    .line 140
    iput-boolean v1, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->bRun:Z

    .line 141
    if-eqz p1, :cond_0

    .line 142
    iget-object v0, p0, Lcom/lsec/core/frame/ctrl/SwipeGridViewHelper$RunnableMove;->view:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setScrollX(I)V

    .line 143
    :cond_0
    return-void
.end method
