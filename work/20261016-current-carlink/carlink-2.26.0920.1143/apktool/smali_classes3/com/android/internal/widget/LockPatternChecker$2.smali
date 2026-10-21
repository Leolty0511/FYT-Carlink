.class final Lcom/android/internal/widget/LockPatternChecker$2;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/LockPatternChecker;->checkPattern(Lcom/android/internal/widget/LockPatternUtils;Ljava/util/List;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)Landroid/os/AsyncTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mThrottleTimeout:I

.field private patternCopy:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

.field final synthetic val$pattern:Ljava/util/List;

.field final synthetic val$userId:I

.field final synthetic val$utils:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Ljava/util/List;Lcom/android/internal/widget/LockPatternUtils;ILcom/android/internal/widget/LockPatternChecker$OnCheckCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    iput-object p2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iput p3, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iput-object p4, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 5

    .line 2
    :try_start_0
    iget-object p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$utils:Lcom/android/internal/widget/LockPatternUtils;

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->patternCopy:Ljava/util/List;

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$userId:I

    iget-object v2, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v3, Lcom/android/internal/widget/e;

    const/4 v4, 0x0

    invoke-direct {v3, v2, v4}, Lcom/android/internal/widget/e;-><init>(Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;I)V

    invoke-virtual {p1, v0, v1, v3}, Lcom/android/internal/widget/LockPatternUtils;->checkPattern(Ljava/util/List;ILcom/android/internal/widget/LockPatternUtils$CheckCredentialProgressCallback;)Z

    move-result p1

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Lcom/android/internal/widget/LockPatternUtils$RequestThrottledException;->getTimeoutMs()I

    move-result p1

    iput p1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    .line 4
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method public onCancelled()V
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-interface {v0}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onCancelled()V

    return-void
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$callback:Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->mThrottleTimeout:I

    invoke-interface {v0, p1, v1}, Lcom/android/internal/widget/LockPatternChecker$OnCheckCallback;->onChecked(ZI)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/LockPatternChecker$2;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onPreExecute()V
    .locals 2

    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/android/internal/widget/LockPatternChecker$2;->val$pattern:Ljava/util/List;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/android/internal/widget/LockPatternChecker$2;->patternCopy:Ljava/util/List;

    return-void
.end method
