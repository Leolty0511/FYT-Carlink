.class final Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "TextClassificationAsyncTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
        ">;"
    }
.end annotation


# instance fields
.field private final mOriginalText:Ljava/lang/String;

.field private final mSelectionResultCallback:Ljava/util/function/Consumer;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectionResultSupplier:Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;"
        }
    .end annotation
.end field

.field private final mTextView:Landroid/widget/TextView;

.field private final mTimeOutDuration:J


# direct methods
.method public constructor <init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/TextView;",
            "J",
            "Ljava/util/function/Supplier<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;",
            "Ljava/util/function/Consumer<",
            "Landroid/widget/SelectionActionModeHelper$SelectionResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    if-eqz p1, :cond_0

    .line 2
    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getHandler()Landroid/os/Handler;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v0, 0x0

    .line 9
    :goto_0
    invoke-direct {p0, v0}, Landroid/os/AsyncTask;-><init>(Landroid/os/Handler;)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    check-cast p1, Landroid/widget/TextView;

    .line 17
    .line 18
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    iput-wide p2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:J

    .line 21
    .line 22
    invoke-static {p4}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p2

    .line 26
    invoke-static {p2}, Landroid/widget/d;->f(Ljava/lang/Object;)Ljava/util/function/Supplier;

    .line 27
    .line 28
    .line 29
    move-result-object p2

    .line 30
    iput-object p2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    .line 31
    .line 32
    invoke-static {p5}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/widget/d;->e(Ljava/lang/Object;)Ljava/util/function/Consumer;

    .line 37
    .line 38
    .line 39
    move-result-object p2

    .line 40
    iput-object p2, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    .line 41
    .line 42
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 43
    .line 44
    .line 45
    move-result-object p1

    .line 46
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    .line 51
    .line 52
    return-void
.end method

.method public static synthetic a(Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onTimeOut()V

    return-void
.end method

.method private onTimeOut()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    .line 6
    .line 7
    if-ne v0, v1, :cond_0

    .line 8
    .line 9
    const/4 v0, 0x0

    .line 10
    invoke-virtual {p0, v0}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 11
    .line 12
    .line 13
    :cond_0
    const/4 v0, 0x1

    .line 14
    invoke-virtual {p0, v0}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 15
    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;
    .locals 3

    .line 2
    new-instance p1, Landroid/widget/f;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroid/widget/f;-><init>(Ljava/lang/Object;I)V

    .line 3
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    iget-wide v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTimeOutDuration:J

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 4
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultSupplier:Ljava/util/function/Supplier;

    invoke-static {v0}, Landroid/net/lowpan/b;->g(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    .line 5
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    return-object v0
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->doInBackground([Ljava/lang/Void;)Landroid/widget/SelectionActionModeHelper$SelectionResult;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 2

    .line 2
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mOriginalText:Ljava/lang/String;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mTextView:Landroid/widget/TextView;

    invoke-static {v1}, Landroid/widget/SelectionActionModeHelper;->access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->mSelectionResultCallback:Ljava/util/function/Consumer;

    invoke-static {v0, p1}, Landroid/widget/d;->l(Ljava/util/function/Consumer;Ljava/lang/Object;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/widget/SelectionActionModeHelper$SelectionResult;

    invoke-virtual {p0, p1}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;->onPostExecute(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method
