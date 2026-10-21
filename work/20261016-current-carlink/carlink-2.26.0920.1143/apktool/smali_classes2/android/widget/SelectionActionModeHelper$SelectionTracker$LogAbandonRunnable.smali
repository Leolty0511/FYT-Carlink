.class final Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper$SelectionTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "LogAbandonRunnable"
.end annotation


# instance fields
.field private mIsPending:Z

.field final synthetic this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;


# direct methods
.method private constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;Landroid/widget/SelectionActionModeHelper$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;-><init>(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)V

    return-void
.end method


# virtual methods
.method public flush()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$600(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0, p0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 8
    .line 9
    .line 10
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->run()V

    .line 11
    .line 12
    .line 13
    return-void
.end method

.method public run()V
    .locals 5

    .line 1
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 6
    .line 7
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$900(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$700(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 18
    .line 19
    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$800(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    const/16 v3, 0x6b

    .line 24
    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 27
    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 30
    .line 31
    const/4 v1, -0x1

    .line 32
    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$802(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    .line 33
    .line 34
    .line 35
    move-result v1

    .line 36
    invoke-static {v0, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$702(Landroid/widget/SelectionActionModeHelper$SelectionTracker;I)I

    .line 37
    .line 38
    .line 39
    const/4 v0, 0x0

    .line 40
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 41
    .line 42
    :cond_0
    return-void
.end method

.method public schedule(I)V
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const-string v0, "SelectActionModeHelper"

    .line 6
    .line 7
    const-string v1, "Force flushing abandon due to new scheduling request"

    .line 8
    .line 9
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 10
    .line 11
    .line 12
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->flush()V

    .line 13
    .line 14
    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->mIsPending:Z

    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionTracker$LogAbandonRunnable;->this$0:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 19
    .line 20
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->access$600(Landroid/widget/SelectionActionModeHelper$SelectionTracker;)Landroid/widget/TextView;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    int-to-long v1, p1

    .line 25
    invoke-virtual {v0, p0, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 26
    .line 27
    .line 28
    return-void
.end method
