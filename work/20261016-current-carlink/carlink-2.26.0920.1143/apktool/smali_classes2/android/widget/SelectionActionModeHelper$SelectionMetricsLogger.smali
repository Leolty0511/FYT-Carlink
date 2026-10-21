.class final Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/SelectionActionModeHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "SelectionMetricsLogger"
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "SelectionMetricsLogger"

.field private static final PATTERN_WHITESPACE:Ljava/util/regex/Pattern;


# instance fields
.field private final mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

.field private final mEditTextLogger:Z

.field private mStartIndex:I

.field private mText:Ljava/lang/String;

.field private final mWordIterator:Ljava/text/BreakIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-string v0, "\\s+"

    .line 2
    .line 3
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    sput-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    .line 8
    .line 9
    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    if-eqz v0, :cond_0

    .line 12
    .line 13
    const/4 v0, 0x3

    .line 14
    goto :goto_0

    .line 15
    :cond_0
    const/4 v0, 0x1

    .line 16
    :goto_0
    new-instance v1, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 17
    .line 18
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 19
    .line 20
    .line 21
    move-result-object v2

    .line 22
    invoke-direct {v1, v2, v0}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;-><init>(Landroid/content/Context;I)V

    .line 23
    .line 24
    .line 25
    iput-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 26
    .line 27
    invoke-virtual {p1}, Landroid/widget/TextView;->isTextEditable()Z

    .line 28
    .line 29
    .line 30
    move-result v0

    .line 31
    iput-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    .line 32
    .line 33
    invoke-virtual {p1}, Landroid/widget/TextView;->getTextLocale()Ljava/util/Locale;

    .line 34
    .line 35
    .line 36
    move-result-object p1

    .line 37
    invoke-static {p1}, Ljava/text/BreakIterator;->getWordInstance(Ljava/util/Locale;)Ljava/text/BreakIterator;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 42
    .line 43
    return-void
.end method

.method private countWordsBackward(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-lt p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    :goto_1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 13
    .line 14
    if-le p1, v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p0, v0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    :cond_1
    move p1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return v1
.end method

.method private countWordsForward(I)I
    .locals 2

    .line 1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-gt p1, v0, :cond_0

    .line 5
    .line 6
    const/4 v0, 0x1

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    move v0, v1

    .line 9
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/Preconditions;->checkArgument(Z)V

    .line 10
    .line 11
    .line 12
    :goto_1
    iget v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 13
    .line 14
    if-ge p1, v0, :cond_2

    .line 15
    .line 16
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    invoke-direct {p0, p1, v0}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    .line 23
    .line 24
    .line 25
    move-result p1

    .line 26
    if-nez p1, :cond_1

    .line 27
    .line 28
    add-int/lit8 v1, v1, 0x1

    .line 29
    .line 30
    :cond_1
    move p1, v0

    .line 31
    goto :goto_1

    .line 32
    :cond_2
    return v1
.end method

.method private getWordDelta(II)[I
    .locals 5

    .line 1
    const/4 v0, 0x2

    .line 2
    new-array v0, v0, [I

    .line 3
    .line 4
    iget v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 5
    .line 6
    const/4 v2, 0x1

    .line 7
    const/4 v3, 0x0

    .line 8
    if-ne p1, v1, :cond_0

    .line 9
    .line 10
    aput v3, v0, v3

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    if-ge p1, v1, :cond_1

    .line 14
    .line 15
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    .line 16
    .line 17
    .line 18
    move-result p1

    .line 19
    neg-int p1, p1

    .line 20
    aput p1, v0, v3

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-direct {p0, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    aput v1, v0, v3

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 30
    .line 31
    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->isBoundary(I)Z

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-nez v1, :cond_2

    .line 36
    .line 37
    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 38
    .line 39
    invoke-virtual {v1, p1}, Ljava/text/BreakIterator;->preceding(I)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    iget-object v4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 44
    .line 45
    invoke-virtual {v4, p1}, Ljava/text/BreakIterator;->following(I)I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    invoke-direct {p0, v1, p1}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->isWhitespace(II)Z

    .line 50
    .line 51
    .line 52
    move-result p1

    .line 53
    if-nez p1, :cond_2

    .line 54
    .line 55
    aget p1, v0, v3

    .line 56
    .line 57
    sub-int/2addr p1, v2

    .line 58
    aput p1, v0, v3

    .line 59
    .line 60
    :cond_2
    :goto_0
    iget p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 61
    .line 62
    if-ne p2, p1, :cond_3

    .line 63
    .line 64
    aput v3, v0, v2

    .line 65
    .line 66
    goto :goto_1

    .line 67
    :cond_3
    if-ge p2, p1, :cond_4

    .line 68
    .line 69
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsForward(I)I

    .line 70
    .line 71
    .line 72
    move-result p1

    .line 73
    neg-int p1, p1

    .line 74
    aput p1, v0, v2

    .line 75
    .line 76
    goto :goto_1

    .line 77
    :cond_4
    invoke-direct {p0, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->countWordsBackward(I)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    aput p1, v0, v2

    .line 82
    .line 83
    :goto_1
    return-object v0
.end method

.method private isWhitespace(II)Z
    .locals 2

    sget-object v0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->PATTERN_WHITESPACE:Ljava/util/regex/Pattern;

    iget-object v1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    invoke-virtual {v1, p1, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/regex/Matcher;->matches()Z

    move-result p1

    return p1
.end method


# virtual methods
.method public isEditTextLogger()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mEditTextLogger:Z

    return v0
.end method

.method public logSelectionAction(IIILandroid/view/textclassifier/TextClassification;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "start"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "end"

    .line 21
    .line 22
    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    if-eqz p4, :cond_0

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 33
    .line 34
    aget v1, p1, v2

    .line 35
    .line 36
    aget p1, p1, p2

    .line 37
    .line 38
    invoke-static {v1, p1, p3, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(IIILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {v0, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    iget-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 47
    .line 48
    aget v0, p1, v2

    .line 49
    .line 50
    aget p1, p1, p2

    .line 51
    .line 52
    invoke-static {v0, p1, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionAction(III)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-virtual {p4, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catch_0
    move-exception p1

    .line 61
    const-string p2, "SelectionMetricsLogger"

    .line 62
    .line 63
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 64
    .line 65
    .line 66
    move-result-object p1

    .line 67
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 68
    .line 69
    .line 70
    :goto_0
    return-void
.end method

.method public logSelectionModified(IILandroid/view/textclassifier/TextClassification;Landroid/view/textclassifier/TextSelection;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 2
    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    const-string/jumbo v1, "start"

    .line 8
    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p1, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    const-string v1, "end"

    .line 21
    .line 22
    invoke-static {p2, p1, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 23
    .line 24
    .line 25
    invoke-direct {p0, p1, p2}, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->getWordDelta(II)[I

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    const/4 p2, 0x1

    .line 30
    if-eqz p4, :cond_0

    .line 31
    .line 32
    iget-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 33
    .line 34
    aget v0, p1, v2

    .line 35
    .line 36
    aget p1, p1, p2

    .line 37
    .line 38
    invoke-static {v0, p1, p4}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextSelection;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 39
    .line 40
    .line 41
    move-result-object p1

    .line 42
    invoke-virtual {p3, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_0
    if-eqz p3, :cond_1

    .line 47
    .line 48
    iget-object p4, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 49
    .line 50
    aget v0, p1, v2

    .line 51
    .line 52
    aget p1, p1, p2

    .line 53
    .line 54
    invoke-static {v0, p1, p3}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(IILandroid/view/textclassifier/TextClassification;)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 55
    .line 56
    .line 57
    move-result-object p1

    .line 58
    invoke-virtual {p4, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V

    .line 59
    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_1
    iget-object p3, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 63
    .line 64
    aget p4, p1, v2

    .line 65
    .line 66
    aget p1, p1, p2

    .line 67
    .line 68
    invoke-static {p4, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionModified(II)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 69
    .line 70
    .line 71
    move-result-object p1

    .line 72
    invoke-virtual {p3, p1}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 73
    .line 74
    .line 75
    goto :goto_0

    .line 76
    :catch_0
    move-exception p1

    .line 77
    const-string p2, "SelectionMetricsLogger"

    .line 78
    .line 79
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 80
    .line 81
    .line 82
    move-result-object p1

    .line 83
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 84
    .line 85
    .line 86
    :goto_0
    return-void
.end method

.method public logSelectionStarted(Ljava/lang/CharSequence;I)V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {p1}, Lcom/android/internal/util/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 5
    .line 6
    .line 7
    move-result v0

    .line 8
    const-string v1, "index"

    .line 9
    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-static {p2, v2, v0, v1}, Lcom/android/internal/util/Preconditions;->checkArgumentInRange(IIILjava/lang/String;)I

    .line 12
    .line 13
    .line 14
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 15
    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-nez v0, :cond_1

    .line 23
    .line 24
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    iput-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 29
    .line 30
    :cond_1
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mWordIterator:Ljava/text/BreakIterator;

    .line 31
    .line 32
    iget-object v0, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mText:Ljava/lang/String;

    .line 33
    .line 34
    invoke-virtual {p1, v0}, Ljava/text/BreakIterator;->setText(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    iput p2, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mStartIndex:I

    .line 38
    .line 39
    iget-object p1, p0, Landroid/widget/SelectionActionModeHelper$SelectionMetricsLogger;->mDelegate:Landroid/view/textclassifier/logging/SmartSelectionEventTracker;

    .line 40
    .line 41
    invoke-static {v2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;->selectionStarted(I)Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;

    .line 42
    .line 43
    .line 44
    move-result-object p2

    .line 45
    invoke-virtual {p1, p2}, Landroid/view/textclassifier/logging/SmartSelectionEventTracker;->logEvent(Landroid/view/textclassifier/logging/SmartSelectionEventTracker$SelectionEvent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 46
    .line 47
    .line 48
    goto :goto_0

    .line 49
    :catch_0
    move-exception p1

    .line 50
    const-string p2, "SelectionMetricsLogger"

    .line 51
    .line 52
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 53
    .line 54
    .line 55
    move-result-object p1

    .line 56
    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 57
    .line 58
    .line 59
    :goto_0
    return-void
.end method
