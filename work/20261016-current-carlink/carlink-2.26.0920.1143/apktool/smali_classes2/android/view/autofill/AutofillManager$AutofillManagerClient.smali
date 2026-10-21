.class final Landroid/view/autofill/AutofillManager$AutofillManagerClient;
.super Landroid/view/autofill/IAutoFillManagerClient$Stub;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/autofill/AutofillManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "AutofillManagerClient"
.end annotation


# instance fields
.field private final mAfm:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/autofill/AutofillManager;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/view/autofill/AutofillManager;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/view/autofill/IAutoFillManagerClient$Stub;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic a(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$startIntentSender$6(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic b(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$requestShowFillUi$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method public static synthetic c(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$requestHideFillUi$4(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static synthetic d(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setSessionFinished$9(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method public static synthetic e(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method public static synthetic f(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setState$0(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method

.method public static synthetic g(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setSaveUiState$8(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method public static synthetic h(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$setTrackedViews$7(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method public static synthetic i(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method public static synthetic j(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->lambda$notifyNoFillUi$5(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method private static synthetic lambda$authenticate$2(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->access$1400(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    return-void
.end method

.method private static synthetic lambda$autofill$1(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1500(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    return-void
.end method

.method private static synthetic lambda$notifyNoFillUi$5(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1100(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V

    return-void
.end method

.method private static synthetic lambda$requestHideFillUi$4(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$1200(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method private static synthetic lambda$requestShowFillUi$3(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 0

    invoke-static/range {p0 .. p6}, Landroid/view/autofill/AutofillManager;->access$1300(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    return-void
.end method

.method private static synthetic lambda$setSaveUiState$8(Landroid/view/autofill/AutofillManager;IZ)V
    .locals 0

    invoke-static {p0, p1, p2}, Landroid/view/autofill/AutofillManager;->access$800(Landroid/view/autofill/AutofillManager;IZ)V

    return-void
.end method

.method private static synthetic lambda$setSessionFinished$9(Landroid/view/autofill/AutofillManager;I)V
    .locals 0

    invoke-static {p0, p1}, Landroid/view/autofill/AutofillManager;->access$700(Landroid/view/autofill/AutofillManager;I)V

    return-void
.end method

.method private static synthetic lambda$setState$0(Landroid/view/autofill/AutofillManager;ZZZ)V
    .locals 0

    invoke-static {p0, p1, p2, p3}, Landroid/view/autofill/AutofillManager;->access$1600(Landroid/view/autofill/AutofillManager;ZZZ)V

    return-void
.end method

.method private static synthetic lambda$setTrackedViews$7(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 0

    invoke-static {p0, p1, p2, p3, p4}, Landroid/view/autofill/AutofillManager;->access$900(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    return-void
.end method

.method private static synthetic lambda$startIntentSender$6(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 6

    .line 1
    :try_start_0
    invoke-static {p0}, Landroid/view/autofill/AutofillManager;->access$1000(Landroid/view/autofill/AutofillManager;)Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const/4 v3, 0x0

    .line 6
    const/4 v4, 0x0

    .line 7
    const/4 v5, 0x0

    .line 8
    move-object v1, p1

    .line 9
    move-object v2, p2

    .line 10
    invoke-virtual/range {v0 .. v5}, Landroid/content/Context;->startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;III)V
    :try_end_0
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception p0

    .line 15
    new-instance p2, Ljava/lang/StringBuilder;

    .line 16
    .line 17
    const-string/jumbo v0, "startIntentSender() failed for intent:"

    .line 18
    .line 19
    .line 20
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 24
    .line 25
    .line 26
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object p1

    .line 30
    const-string p2, "AutofillManager"

    .line 31
    .line 32
    invoke-static {p2, p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 33
    .line 34
    .line 35
    :goto_0
    return-void
.end method


# virtual methods
.method public authenticate(IILandroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v7, Landroid/view/autofill/h;

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    move-object v2, v0

    .line 15
    move v3, p1

    .line 16
    move v4, p2

    .line 17
    move-object v5, p3

    .line 18
    move-object v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/h;-><init>(Landroid/view/autofill/AutofillManager;IILandroid/content/IntentSender;Landroid/content/Intent;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public autofill(ILjava/util/List;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillId;",
            ">;",
            "Ljava/util/List<",
            "Landroid/view/autofill/AutofillValue;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/c;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/c;-><init>(Landroid/view/autofill/AutofillManager;ILjava/util/List;Ljava/util/List;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public notifyNoFillUi(ILandroid/view/autofill/AutofillId;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/d;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/d;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;Z)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public requestHideFillUi(ILandroid/view/autofill/AutofillId;)V
    .locals 1

    .line 1
    iget-object p1, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {p1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    check-cast p1, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    new-instance v0, Landroid/view/autofill/f;

    .line 12
    .line 13
    invoke-direct {v0, p1, p2}, Landroid/view/autofill/f;-><init>(Landroid/view/autofill/AutofillManager;Landroid/view/autofill/AutofillId;)V

    .line 14
    .line 15
    .line 16
    invoke-static {p1, v0}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public requestShowFillUi(ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V
    .locals 11

    .line 1
    move-object v0, p0

    .line 2
    iget-object v1, v0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 3
    .line 4
    invoke-virtual {v1}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object v1

    .line 8
    check-cast v1, Landroid/view/autofill/AutofillManager;

    .line 9
    .line 10
    if-eqz v1, :cond_0

    .line 11
    .line 12
    new-instance v10, Landroid/view/autofill/g;

    .line 13
    .line 14
    move-object v2, v10

    .line 15
    move-object v3, v1

    .line 16
    move v4, p1

    .line 17
    move-object v5, p2

    .line 18
    move v6, p3

    .line 19
    move v7, p4

    .line 20
    move-object/from16 v8, p5

    .line 21
    .line 22
    move-object/from16 v9, p6

    .line 23
    .line 24
    invoke-direct/range {v2 .. v9}, Landroid/view/autofill/g;-><init>(Landroid/view/autofill/AutofillManager;ILandroid/view/autofill/AutofillId;IILandroid/graphics/Rect;Landroid/view/autofill/IAutofillWindowPresenter;)V

    .line 25
    .line 26
    .line 27
    invoke-static {v1, v10}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 28
    .line 29
    .line 30
    :cond_0
    return-void
.end method

.method public setSaveUiState(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/j;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/j;-><init>(Landroid/view/autofill/AutofillManager;IZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setSessionFinished(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/b;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1}, Landroid/view/autofill/b;-><init>(Landroid/view/autofill/AutofillManager;I)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setState(ZZZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/i;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p2, p3}, Landroid/view/autofill/i;-><init>(Landroid/view/autofill/AutofillManager;ZZZ)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method

.method public setTrackedViews(I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v7, Landroid/view/autofill/e;

    .line 12
    .line 13
    move-object v1, v7

    .line 14
    move-object v2, v0

    .line 15
    move v3, p1

    .line 16
    move-object v4, p2

    .line 17
    move v5, p3

    .line 18
    move-object v6, p4

    .line 19
    invoke-direct/range {v1 .. v6}, Landroid/view/autofill/e;-><init>(Landroid/view/autofill/AutofillManager;I[Landroid/view/autofill/AutofillId;Z[Landroid/view/autofill/AutofillId;)V

    .line 20
    .line 21
    .line 22
    invoke-static {v0, v7}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    return-void
.end method

.method public startIntentSender(Landroid/content/IntentSender;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/view/autofill/AutofillManager$AutofillManagerClient;->mAfm:Ljava/lang/ref/WeakReference;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/ref/Reference;->get()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/view/autofill/AutofillManager;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    new-instance v1, Landroid/view/autofill/a;

    .line 12
    .line 13
    invoke-direct {v1, v0, p1, p2}, Landroid/view/autofill/a;-><init>(Landroid/view/autofill/AutofillManager;Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 14
    .line 15
    .line 16
    invoke-static {v0, v1}, Landroid/view/autofill/AutofillManager;->access$600(Landroid/view/autofill/AutofillManager;Ljava/lang/Runnable;)V

    .line 17
    .line 18
    .line 19
    :cond_0
    return-void
.end method
