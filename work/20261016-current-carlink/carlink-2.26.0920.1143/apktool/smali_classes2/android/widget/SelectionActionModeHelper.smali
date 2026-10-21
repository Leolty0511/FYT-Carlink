.class final Landroid/widget/SelectionActionModeHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SelectionActionModeHelper$SelectionResult;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;,
        Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;,
        Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;,
        Landroid/widget/SelectionActionModeHelper$SelectionTracker;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectActionModeHelper"


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private final mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

.field private mTextClassification:Landroid/view/textclassifier/TextClassification;

.field private mTextClassificationAsyncTask:Landroid/os/AsyncTask;

.field private final mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

.field private final mTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    check-cast p1, Landroid/widget/Editor;

    .line 9
    .line 10
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 11
    .line 12
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextView()Landroid/widget/TextView;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 17
    .line 18
    new-instance v6, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 21
    .line 22
    .line 23
    move-result-object v1

    .line 24
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 25
    .line 26
    .line 27
    move-result-object v2

    .line 28
    const/4 v3, 0x0

    .line 29
    const/4 v4, 0x1

    .line 30
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    .line 31
    .line 32
    .line 33
    move-result-object v5

    .line 34
    move-object v0, v6

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;-><init>(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 36
    .line 37
    .line 38
    iput-object v6, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 39
    .line 40
    new-instance v0, Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 41
    .line 42
    invoke-direct {v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;-><init>(Landroid/widget/TextView;)V

    .line 43
    .line 44
    .line 45
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic a(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method public static synthetic access$500(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 0

    invoke-static {p0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic b(Landroid/widget/SelectionActionModeHelper;Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    return-void
.end method

.method private cancelAsyncTask()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-eqz v0, :cond_0

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 8
    .line 9
    .line 10
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 11
    .line 12
    :cond_0
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 13
    .line 14
    return-void
.end method

.method private static getActionType(I)I
    .locals 1

    const v0, 0x1020031

    if-eq p0, v0, :cond_2

    const v0, 0x1020035

    if-eq p0, v0, :cond_1

    const v0, 0x1020041

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/16 p0, 0x6c

    return p0

    :pswitch_0
    const/16 p0, 0x65

    return p0

    :pswitch_1
    const/16 p0, 0x67

    return p0

    :pswitch_2
    const/16 p0, 0xc8

    return p0

    :cond_0
    const/16 p0, 0x69

    return p0

    :cond_1
    const/16 p0, 0x68

    return p0

    :cond_2
    :pswitch_3
    const/16 p0, 0x66

    return p0

    nop

    :pswitch_data_0
    .packed-switch 0x102001f
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_3
    .end packed-switch
.end method

.method private static getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;
    .locals 0

    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const-string p0, ""

    return-object p0
.end method

.method private invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_0

    .line 3
    .line 4
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    .line 5
    .line 6
    .line 7
    move-result-object p1

    .line 8
    goto :goto_0

    .line 9
    :cond_0
    move-object p1, v0

    .line 10
    :goto_0
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/widget/Editor;->getTextActionMode()Landroid/view/ActionMode;

    .line 15
    .line 16
    .line 17
    move-result-object p1

    .line 18
    if-eqz p1, :cond_1

    .line 19
    .line 20
    invoke-virtual {p1}, Landroid/view/ActionMode;->invalidate()V

    .line 21
    .line 22
    .line 23
    :cond_1
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 24
    .line 25
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 26
    .line 27
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 28
    .line 29
    .line 30
    move-result v1

    .line 31
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 32
    .line 33
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 38
    .line 39
    invoke-virtual {p1, v1, v2, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionUpdated(IILandroid/view/textclassifier/TextClassification;)V

    .line 40
    .line 41
    .line 42
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 43
    .line 44
    return-void
.end method

.method private resetTextClassificationHelper()V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-static {v2}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {v3}, Landroid/widget/TextView;->getSelectionStart()I

    .line 18
    .line 19
    .line 20
    move-result v3

    .line 21
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 22
    .line 23
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 24
    .line 25
    .line 26
    move-result v4

    .line 27
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 28
    .line 29
    invoke-virtual {v5}, Landroid/widget/TextView;->getTextLocales()Landroid/os/LocaleList;

    .line 30
    .line 31
    .line 32
    move-result-object v5

    .line 33
    invoke-virtual/range {v0 .. v5}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->init(Landroid/view/textclassifier/TextClassifier;Ljava/lang/CharSequence;IILandroid/os/LocaleList;)V

    .line 34
    .line 35
    .line 36
    return-void
.end method

.method private skipTextClassification()Z
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sget-object v1, Landroid/view/textclassifier/TextClassifier;->NO_OP:Landroid/view/textclassifier/TextClassifier;

    .line 8
    .line 9
    const/4 v2, 0x1

    .line 10
    const/4 v3, 0x0

    .line 11
    if-ne v0, v1, :cond_0

    .line 12
    .line 13
    move v0, v2

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    move v0, v3

    .line 16
    :goto_0
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 17
    .line 18
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 19
    .line 20
    .line 21
    move-result v1

    .line 22
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 23
    .line 24
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    .line 25
    .line 26
    .line 27
    move-result v4

    .line 28
    if-ne v1, v4, :cond_1

    .line 29
    .line 30
    move v1, v2

    .line 31
    goto :goto_1

    .line 32
    :cond_1
    move v1, v3

    .line 33
    :goto_1
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 34
    .line 35
    invoke-virtual {v4}, Landroid/widget/TextView;->hasPasswordTransformationMethod()Z

    .line 36
    .line 37
    .line 38
    move-result v4

    .line 39
    if-nez v4, :cond_3

    .line 40
    .line 41
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 42
    .line 43
    invoke-virtual {v4}, Landroid/widget/TextView;->getInputType()I

    .line 44
    .line 45
    .line 46
    move-result v4

    .line 47
    invoke-static {v4}, Landroid/widget/TextView;->isPasswordInputType(I)Z

    .line 48
    .line 49
    .line 50
    move-result v4

    .line 51
    if-eqz v4, :cond_2

    .line 52
    .line 53
    goto :goto_2

    .line 54
    :cond_2
    move v4, v3

    .line 55
    goto :goto_3

    .line 56
    :cond_3
    :goto_2
    move v4, v2

    .line 57
    :goto_3
    if-nez v0, :cond_5

    .line 58
    .line 59
    if-nez v1, :cond_5

    .line 60
    .line 61
    if-eqz v4, :cond_4

    .line 62
    .line 63
    goto :goto_4

    .line 64
    :cond_4
    move v2, v3

    .line 65
    :cond_5
    :goto_4
    return v2
.end method

.method private startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const/4 v1, 0x0

    .line 8
    if-eqz p1, :cond_1

    .line 9
    .line 10
    instance-of v2, v0, Landroid/text/Spannable;

    .line 11
    .line 12
    if-eqz v2, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v2}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    invoke-interface {v2}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    .line 21
    .line 22
    .line 23
    move-result-object v2

    .line 24
    invoke-virtual {v2}, Landroid/view/textclassifier/TextClassifierConstants;->isDarkLaunch()Z

    .line 25
    .line 26
    .line 27
    move-result v2

    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    check-cast v0, Landroid/text/Spannable;

    .line 31
    .line 32
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$000(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    .line 33
    .line 34
    .line 35
    move-result v2

    .line 36
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$100(Landroid/widget/SelectionActionModeHelper$SelectionResult;)I

    .line 37
    .line 38
    .line 39
    move-result v3

    .line 40
    invoke-static {v0, v2, v3}, Landroid/text/Selection;->setSelection(Landroid/text/Spannable;II)V

    .line 41
    .line 42
    .line 43
    :cond_0
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper$SelectionResult;->access$200(Landroid/widget/SelectionActionModeHelper$SelectionResult;)Landroid/view/textclassifier/TextClassification;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 48
    .line 49
    goto :goto_0

    .line 50
    :cond_1
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 51
    .line 52
    :goto_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 53
    .line 54
    invoke-virtual {v0}, Landroid/widget/Editor;->startSelectionActionModeInternal()Z

    .line 55
    .line 56
    .line 57
    move-result v0

    .line 58
    if-eqz v0, :cond_3

    .line 59
    .line 60
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 61
    .line 62
    invoke-virtual {v0}, Landroid/widget/Editor;->getSelectionController()Landroid/widget/Editor$SelectionModifierCursorController;

    .line 63
    .line 64
    .line 65
    move-result-object v0

    .line 66
    if-eqz v0, :cond_2

    .line 67
    .line 68
    invoke-virtual {v0}, Landroid/widget/Editor$SelectionModifierCursorController;->show()V

    .line 69
    .line 70
    .line 71
    :cond_2
    if-eqz p1, :cond_3

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 74
    .line 75
    invoke-virtual {v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSmartSelection(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 79
    .line 80
    const/4 v0, 0x0

    .line 81
    invoke-virtual {p1, v0}, Landroid/widget/Editor;->setRestartActionModeOnNextRefresh(Z)V

    .line 82
    .line 83
    .line 84
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public getTextClassification()Landroid/view/textclassifier/TextClassification;
    .locals 1

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    return-object v0
.end method

.method public invalidateActionModeAsync()V
    .locals 7

    .line 1
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 2
    .line 3
    .line 4
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    if-eqz v0, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    invoke-direct {p0, v0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 12
    .line 13
    .line 14
    goto :goto_0

    .line 15
    :cond_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V

    .line 16
    .line 17
    .line 18
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    .line 19
    .line 20
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 23
    .line 24
    invoke-virtual {v1}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    .line 25
    .line 26
    .line 27
    move-result-wide v3

    .line 28
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 29
    .line 30
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 31
    .line 32
    .line 33
    new-instance v5, Landroid/widget/k;

    .line 34
    .line 35
    const/4 v6, 0x2

    .line 36
    invoke-direct {v5, v1, v6}, Landroid/widget/k;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;I)V

    .line 37
    .line 38
    .line 39
    new-instance v6, Landroid/widget/l;

    .line 40
    .line 41
    const/4 v1, 0x1

    .line 42
    invoke-direct {v6, p0, v1}, Landroid/widget/l;-><init>(Landroid/widget/SelectionActionModeHelper;I)V

    .line 43
    .line 44
    .line 45
    move-object v1, v0

    .line 46
    invoke-direct/range {v1 .. v6}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 47
    .line 48
    .line 49
    const/4 v1, 0x0

    .line 50
    new-array v1, v1, [Ljava/lang/Void;

    .line 51
    .line 52
    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 53
    .line 54
    .line 55
    move-result-object v0

    .line 56
    iput-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 57
    .line 58
    :goto_0
    return-void
.end method

.method public onDestroyActionMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionDestroyed()V

    .line 4
    .line 5
    .line 6
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onSelectionAction(I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    invoke-static {p1}, Landroid/widget/SelectionActionModeHelper;->getActionType(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 20
    .line 21
    invoke-virtual {v0, v1, v2, p1, v3}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 22
    .line 23
    .line 24
    return-void
.end method

.method public onSelectionDrag()V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 4
    .line 5
    invoke-virtual {v1}, Landroid/widget/TextView;->getSelectionStart()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    iget-object v2, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 10
    .line 11
    invoke-virtual {v2}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    const/16 v3, 0x6a

    .line 16
    .line 17
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public onTextChanged(II)V
    .locals 2

    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassification:Landroid/view/textclassifier/TextClassification;

    invoke-virtual {v0, p1, p2, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onTextChanged(IILandroid/view/textclassifier/TextClassification;)V

    return-void
.end method

.method public resetSelection(I)Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper;->mEditor:Landroid/widget/Editor;

    .line 4
    .line 5
    invoke-virtual {v0, p1, v1}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->resetSelection(ILandroid/widget/Editor;)Z

    .line 6
    .line 7
    .line 8
    move-result p1

    .line 9
    if-eqz p1, :cond_0

    .line 10
    .line 11
    invoke-virtual {p0}, Landroid/widget/SelectionActionModeHelper;->invalidateActionModeAsync()V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x1

    .line 15
    return p1

    .line 16
    :cond_0
    const/4 p1, 0x0

    .line 17
    return p1
.end method

.method public startActionModeAsync(Z)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->isTextEditable()Z

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const/4 v1, 0x1

    .line 8
    const/4 v2, 0x0

    .line 9
    if-eqz v0, :cond_1

    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/widget/TextView;->getTextClassifier()Landroid/view/textclassifier/TextClassifier;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    invoke-interface {v0}, Landroid/view/textclassifier/TextClassifier;->getSettings()Landroid/view/textclassifier/TextClassifierConstants;

    .line 18
    .line 19
    .line 20
    move-result-object v0

    .line 21
    invoke-virtual {v0}, Landroid/view/textclassifier/TextClassifierConstants;->isSuggestSelectionEnabledForEditableText()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move v0, v2

    .line 29
    goto :goto_1

    .line 30
    :cond_1
    :goto_0
    move v0, v1

    .line 31
    :goto_1
    and-int/2addr p1, v0

    .line 32
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper;->mSelectionTracker:Landroid/widget/SelectionActionModeHelper$SelectionTracker;

    .line 33
    .line 34
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 35
    .line 36
    invoke-static {v3}, Landroid/widget/SelectionActionModeHelper;->getText(Landroid/widget/TextView;)Ljava/lang/CharSequence;

    .line 37
    .line 38
    .line 39
    move-result-object v3

    .line 40
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 41
    .line 42
    invoke-virtual {v4}, Landroid/widget/TextView;->getSelectionStart()I

    .line 43
    .line 44
    .line 45
    move-result v4

    .line 46
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 47
    .line 48
    invoke-virtual {v5}, Landroid/widget/TextView;->getSelectionEnd()I

    .line 49
    .line 50
    .line 51
    move-result v5

    .line 52
    invoke-virtual {v0, v3, v4, v5}, Landroid/widget/SelectionActionModeHelper$SelectionTracker;->onOriginalSelection(Ljava/lang/CharSequence;II)V

    .line 53
    .line 54
    .line 55
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->cancelAsyncTask()V

    .line 56
    .line 57
    .line 58
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->skipTextClassification()Z

    .line 59
    .line 60
    .line 61
    move-result v0

    .line 62
    if-eqz v0, :cond_2

    .line 63
    .line 64
    const/4 p1, 0x0

    .line 65
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper;->startActionMode(Landroid/widget/SelectionActionModeHelper$SelectionResult;)V

    .line 66
    .line 67
    .line 68
    goto :goto_4

    .line 69
    :cond_2
    :try_start_0
    invoke-direct {p0}, Landroid/widget/SelectionActionModeHelper;->resetTextClassificationHelper()V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 70
    .line 71
    .line 72
    goto :goto_2

    .line 73
    :catch_0
    move-exception v0

    .line 74
    invoke-static {}, Landroid/app/ActivityManager;->isUserAMonkey()Z

    .line 75
    .line 76
    .line 77
    move-result v3

    .line 78
    if-eqz v3, :cond_4

    .line 79
    .line 80
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 81
    .line 82
    .line 83
    :goto_2
    new-instance v0, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;

    .line 84
    .line 85
    iget-object v5, p0, Landroid/widget/SelectionActionModeHelper;->mTextView:Landroid/widget/TextView;

    .line 86
    .line 87
    iget-object v3, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;->getTimeoutDuration()J

    .line 90
    .line 91
    .line 92
    move-result-wide v6

    .line 93
    if-eqz p1, :cond_3

    .line 94
    .line 95
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 96
    .line 97
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 98
    .line 99
    .line 100
    new-instance v1, Landroid/widget/k;

    .line 101
    .line 102
    invoke-direct {v1, p1, v2}, Landroid/widget/k;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;I)V

    .line 103
    .line 104
    .line 105
    move-object v8, v1

    .line 106
    goto :goto_3

    .line 107
    :cond_3
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationHelper:Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;

    .line 108
    .line 109
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 110
    .line 111
    .line 112
    new-instance v3, Landroid/widget/k;

    .line 113
    .line 114
    invoke-direct {v3, p1, v1}, Landroid/widget/k;-><init>(Landroid/widget/SelectionActionModeHelper$TextClassificationHelper;I)V

    .line 115
    .line 116
    .line 117
    move-object v8, v3

    .line 118
    :goto_3
    new-instance v9, Landroid/widget/l;

    .line 119
    .line 120
    invoke-direct {v9, p0, v2}, Landroid/widget/l;-><init>(Landroid/widget/SelectionActionModeHelper;I)V

    .line 121
    .line 122
    .line 123
    move-object v4, v0

    .line 124
    invoke-direct/range {v4 .. v9}, Landroid/widget/SelectionActionModeHelper$TextClassificationAsyncTask;-><init>(Landroid/widget/TextView;JLjava/util/function/Supplier;Ljava/util/function/Consumer;)V

    .line 125
    .line 126
    .line 127
    new-array p1, v2, [Ljava/lang/Void;

    .line 128
    .line 129
    invoke-virtual {v0, p1}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 130
    .line 131
    .line 132
    move-result-object p1

    .line 133
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper;->mTextClassificationAsyncTask:Landroid/os/AsyncTask;

    .line 134
    .line 135
    :goto_4
    return-void

    .line 136
    :cond_4
    throw v0
.end method
