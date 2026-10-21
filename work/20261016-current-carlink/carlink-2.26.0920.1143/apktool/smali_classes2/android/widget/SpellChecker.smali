.class public Landroid/widget/SpellChecker;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/SpellChecker$SpellParser;
    }
.end annotation


# static fields
.field public static final AVERAGE_WORD_LENGTH:I = 0x7

.field private static final DBG:Z = false

.field public static final MAX_NUMBER_OF_WORDS:I = 0x32

.field private static final MIN_SENTENCE_LENGTH:I = 0x32

.field private static final SPELL_PAUSE_DURATION:I = 0x190

.field private static final SUGGESTION_SPAN_CACHE_SIZE:I = 0xa

.field private static final TAG:Ljava/lang/String; = "SpellChecker"

.field private static final USE_SPAN_RANGE:I = -0x1

.field public static final WORD_ITERATOR_INTERVAL:I = 0x15e


# instance fields
.field final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

.field private mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

.field private mSpellRunnable:Ljava/lang/Runnable;

.field private final mSuggestionSpanCache:Landroid/util/LruCache;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/LruCache<",
            "Ljava/lang/Long;",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field private mTextServicesManager:Landroid/view/textservice/TextServicesManager;

.field private final mTextView:Landroid/widget/TextView;

.field private mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    .line 6
    .line 7
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 8
    .line 9
    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 10
    .line 11
    new-instance v0, Landroid/util/LruCache;

    .line 12
    .line 13
    const/16 v1, 0xa

    .line 14
    .line 15
    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    .line 16
    .line 17
    .line 18
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 19
    .line 20
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-static {v0}, Lcom/android/internal/util/ArrayUtils;->newUnpaddedIntArray(I)[I

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 28
    .line 29
    array-length v0, v0

    .line 30
    new-array v0, v0, [Landroid/text/style/SpellCheckSpan;

    .line 31
    .line 32
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 33
    .line 34
    invoke-virtual {p1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    .line 35
    .line 36
    .line 37
    move-result-object p1

    .line 38
    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    .line 42
    .line 43
    .line 44
    move-result p1

    .line 45
    iput p1, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 46
    .line 47
    return-void
.end method

.method public static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/widget/SpellChecker;)V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Landroid/widget/SpellChecker;)Z
    .locals 0

    iget-boolean p0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/widget/SpellChecker;)I
    .locals 0

    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/SpellChecker;)[I
    .locals 0

    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method public static synthetic access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 6
    .line 7
    aget-object v1, v1, v0

    .line 8
    .line 9
    const/16 v2, 0x21

    .line 10
    .line 11
    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 12
    .line 13
    .line 14
    const/4 p1, 0x0

    .line 15
    invoke-virtual {v1, p1}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 16
    .line 17
    .line 18
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 19
    .line 20
    iget p2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 21
    .line 22
    add-int/lit8 p3, p2, 0x1

    .line 23
    .line 24
    iput p3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 25
    .line 26
    aput p2, p1, v0

    .line 27
    .line 28
    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 4

    .line 1
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 6
    .line 7
    .line 8
    move-result p3

    .line 9
    if-ltz v0, :cond_6

    .line 10
    .line 11
    if-gt p3, v0, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    const/4 v1, -0x1

    .line 15
    if-eq p4, v1, :cond_1

    .line 16
    .line 17
    if-eq p5, v1, :cond_1

    .line 18
    .line 19
    add-int/2addr v0, p4

    .line 20
    add-int p3, v0, p5

    .line 21
    .line 22
    :cond_1
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    .line 23
    .line 24
    .line 25
    move-result p4

    .line 26
    const/4 p5, 0x0

    .line 27
    if-lez p4, :cond_2

    .line 28
    .line 29
    new-array v1, p4, [Ljava/lang/String;

    .line 30
    .line 31
    move v2, p5

    .line 32
    :goto_0
    if-ge v2, p4, :cond_3

    .line 33
    .line 34
    invoke-virtual {p2, v2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v3

    .line 38
    aput-object v3, v1, v2

    .line 39
    .line 40
    add-int/lit8 v2, v2, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_2
    const-class p2, Ljava/lang/String;

    .line 44
    .line 45
    invoke-static {p2}, Lcom/android/internal/util/ArrayUtils;->emptyArray(Ljava/lang/Class;)[Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object p2

    .line 49
    move-object v1, p2

    .line 50
    check-cast v1, [Ljava/lang/String;

    .line 51
    .line 52
    :cond_3
    new-instance p2, Landroid/text/style/SuggestionSpan;

    .line 53
    .line 54
    iget-object p4, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 55
    .line 56
    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 57
    .line 58
    .line 59
    move-result-object p4

    .line 60
    const/4 v2, 0x3

    .line 61
    invoke-direct {p2, p4, v1, v2}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 62
    .line 63
    .line 64
    iget-boolean p4, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    .line 65
    .line 66
    if-eqz p4, :cond_5

    .line 67
    .line 68
    invoke-static {v0, p3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 69
    .line 70
    .line 71
    move-result-wide v1

    .line 72
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 73
    .line 74
    .line 75
    move-result-object p4

    .line 76
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 77
    .line 78
    invoke-virtual {v1, p4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object v1

    .line 82
    check-cast v1, Landroid/text/style/SuggestionSpan;

    .line 83
    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    :cond_4
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 90
    .line 91
    invoke-virtual {v1, p4, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 92
    .line 93
    .line 94
    :cond_5
    const/16 p4, 0x21

    .line 95
    .line 96
    invoke-interface {p1, p2, v0, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 97
    .line 98
    .line 99
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 100
    .line 101
    invoke-virtual {p1, v0, p3, p5}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    .line 102
    .line 103
    .line 104
    :cond_6
    :goto_1
    return-void
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 0

    .line 1
    if-eq p4, p1, :cond_0

    .line 2
    .line 3
    if-eq p3, p2, :cond_0

    .line 4
    .line 5
    const/4 p0, 0x1

    .line 6
    goto :goto_0

    .line 7
    :cond_0
    if-ne p4, p1, :cond_1

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    .line 10
    .line 11
    .line 12
    move-result p4

    .line 13
    if-ge p1, p4, :cond_1

    .line 14
    .line 15
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    .line 16
    .line 17
    .line 18
    move-result p0

    .line 19
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 20
    .line 21
    .line 22
    move-result p0

    .line 23
    goto :goto_0

    .line 24
    :cond_1
    if-ne p3, p2, :cond_2

    .line 25
    .line 26
    if-lez p2, :cond_2

    .line 27
    .line 28
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    .line 29
    .line 30
    .line 31
    move-result p0

    .line 32
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    .line 33
    .line 34
    .line 35
    move-result p0

    .line 36
    goto :goto_0

    .line 37
    :cond_2
    const/4 p0, 0x0

    .line 38
    :goto_0
    return p0
.end method

.method private isSessionActive()Z
    .locals 1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private nextSpellCheckSpanIndex()I
    .locals 3

    .line 1
    const/4 v0, 0x0

    .line 2
    move v1, v0

    .line 3
    :goto_0
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 4
    .line 5
    if-ge v1, v2, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    if-gez v2, :cond_0

    .line 12
    .line 13
    return v1

    .line 14
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 15
    .line 16
    goto :goto_0

    .line 17
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 18
    .line 19
    invoke-static {v1, v2, v0}, Lcom/android/internal/util/GrowingArrayUtils;->append([III)[I

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 26
    .line 27
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 28
    .line 29
    new-instance v2, Landroid/text/style/SpellCheckSpan;

    .line 30
    .line 31
    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    .line 32
    .line 33
    .line 34
    invoke-static {v0, v1, v2}, Lcom/android/internal/util/GrowingArrayUtils;->append([Ljava/lang/Object;ILjava/lang/Object;)[Ljava/lang/Object;

    .line 35
    .line 36
    .line 37
    move-result-object v0

    .line 38
    check-cast v0, [Landroid/text/style/SpellCheckSpan;

    .line 39
    .line 40
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 41
    .line 42
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 43
    .line 44
    add-int/lit8 v0, v0, 0x1

    .line 45
    .line 46
    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 47
    .line 48
    add-int/lit8 v0, v0, -0x1

    .line 49
    .line 50
    return v0
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 8

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_7

    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    .line 5
    .line 6
    .line 7
    move-result v1

    .line 8
    iget v2, p0, Landroid/widget/SpellChecker;->mCookie:I

    .line 9
    .line 10
    if-eq v1, v2, :cond_0

    .line 11
    .line 12
    goto/16 :goto_4

    .line 13
    .line 14
    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 17
    .line 18
    .line 19
    move-result-object v1

    .line 20
    move-object v3, v1

    .line 21
    check-cast v3, Landroid/text/Editable;

    .line 22
    .line 23
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    const/4 v2, 0x0

    .line 28
    move v4, v2

    .line 29
    :goto_0
    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 30
    .line 31
    if-ge v4, v5, :cond_7

    .line 32
    .line 33
    iget-object v5, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 34
    .line 35
    aget v5, v5, v4

    .line 36
    .line 37
    if-ne v1, v5, :cond_6

    .line 38
    .line 39
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    .line 40
    .line 41
    .line 42
    move-result v0

    .line 43
    and-int/lit8 v1, v0, 0x1

    .line 44
    .line 45
    const/4 v5, 0x1

    .line 46
    if-lez v1, :cond_1

    .line 47
    .line 48
    move v1, v5

    .line 49
    goto :goto_1

    .line 50
    :cond_1
    move v1, v2

    .line 51
    :goto_1
    and-int/lit8 v0, v0, 0x2

    .line 52
    .line 53
    if-lez v0, :cond_2

    .line 54
    .line 55
    move v2, v5

    .line 56
    :cond_2
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 57
    .line 58
    aget-object v0, v0, v4

    .line 59
    .line 60
    if-nez v1, :cond_3

    .line 61
    .line 62
    if-eqz v2, :cond_3

    .line 63
    .line 64
    move-object v2, p0

    .line 65
    move-object v4, p1

    .line 66
    move-object v5, v0

    .line 67
    move v6, p2

    .line 68
    move v7, p3

    .line 69
    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    .line 70
    .line 71
    .line 72
    goto :goto_3

    .line 73
    :cond_3
    iget-boolean p1, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    .line 74
    .line 75
    if-eqz p1, :cond_5

    .line 76
    .line 77
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 78
    .line 79
    .line 80
    move-result p1

    .line 81
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 82
    .line 83
    .line 84
    move-result v1

    .line 85
    const/4 v2, -0x1

    .line 86
    if-eq p2, v2, :cond_4

    .line 87
    .line 88
    if-eq p3, v2, :cond_4

    .line 89
    .line 90
    add-int/2addr p2, p1

    .line 91
    add-int/2addr p3, p2

    .line 92
    goto :goto_2

    .line 93
    :cond_4
    move p2, p1

    .line 94
    move p3, v1

    .line 95
    :goto_2
    if-ltz p1, :cond_5

    .line 96
    .line 97
    if-le v1, p1, :cond_5

    .line 98
    .line 99
    if-le p3, p2, :cond_5

    .line 100
    .line 101
    invoke-static {p2, p3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    .line 102
    .line 103
    .line 104
    move-result-wide p1

    .line 105
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    iget-object p2, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 110
    .line 111
    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 112
    .line 113
    .line 114
    move-result-object p2

    .line 115
    check-cast p2, Landroid/text/style/SuggestionSpan;

    .line 116
    .line 117
    if-eqz p2, :cond_5

    .line 118
    .line 119
    invoke-interface {v3, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 120
    .line 121
    .line 122
    iget-object p2, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 123
    .line 124
    invoke-virtual {p2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    :cond_5
    :goto_3
    return-object v0

    .line 128
    :cond_6
    add-int/lit8 v4, v4, 0x1

    .line 129
    .line 130
    goto :goto_0

    .line 131
    :cond_7
    :goto_4
    return-object v0
.end method

.method private resetSession()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    const-string/jumbo v1, "textservices"

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    check-cast v0, Landroid/view/textservice/TextServicesManager;

    .line 18
    .line 19
    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 20
    .line 21
    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    .line 22
    .line 23
    .line 24
    move-result v0

    .line 25
    const/4 v1, 0x0

    .line 26
    const/4 v2, 0x0

    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    iget-object v0, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 30
    .line 31
    if-eqz v0, :cond_1

    .line 32
    .line 33
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 34
    .line 35
    const/4 v3, 0x1

    .line 36
    invoke-virtual {v0, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    if-nez v0, :cond_0

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 44
    .line 45
    iget-object v4, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 46
    .line 47
    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    .line 48
    .line 49
    .line 50
    move-result-object v0

    .line 51
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 52
    .line 53
    iput-boolean v3, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 57
    .line 58
    :goto_1
    move v0, v2

    .line 59
    :goto_2
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 60
    .line 61
    if-ge v0, v1, :cond_2

    .line 62
    .line 63
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 64
    .line 65
    const/4 v3, -0x1

    .line 66
    aput v3, v1, v0

    .line 67
    .line 68
    add-int/lit8 v0, v0, 0x1

    .line 69
    .line 70
    goto :goto_2

    .line 71
    :cond_2
    iput v2, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 72
    .line 73
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 74
    .line 75
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 76
    .line 77
    .line 78
    move-result-object v1

    .line 79
    check-cast v1, Landroid/text/Editable;

    .line 80
    .line 81
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 82
    .line 83
    .line 84
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 85
    .line 86
    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    .line 87
    .line 88
    .line 89
    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    new-instance v0, Landroid/widget/SpellChecker$1;

    .line 6
    .line 7
    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 11
    .line 12
    goto :goto_0

    .line 13
    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 14
    .line 15
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 16
    .line 17
    .line 18
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 19
    .line 20
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 21
    .line 22
    const-wide/16 v2, 0x190

    .line 23
    .line 24
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 25
    .line 26
    .line 27
    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    .line 4
    .line 5
    .line 6
    if-eqz p1, :cond_0

    .line 7
    .line 8
    new-instance v0, Landroid/text/method/WordIterator;

    .line 9
    .line 10
    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 11
    .line 12
    .line 13
    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/widget/TextView;->onLocaleChanged()V

    .line 18
    .line 19
    .line 20
    return-void
.end method

.method private spellCheck()V
    .locals 15

    .line 18
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-nez v0, :cond_0

    return-void

    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 20
    invoke-static {v0}, Landroid/text/Selection;->getSelectionStart(Ljava/lang/CharSequence;)I

    move-result v7

    .line 21
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v8

    .line 22
    iget v9, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v10, v9, [Landroid/view/textservice/TextInfo;

    const/4 v11, 0x0

    move v12, v11

    move v13, v12

    .line 23
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v12, v1, :cond_7

    .line 24
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v12

    .line 25
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v12

    if-ltz v2, :cond_6

    invoke-virtual {v1}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v2

    if-eqz v2, :cond_1

    goto :goto_3

    .line 26
    :cond_1
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    .line 27
    invoke-interface {v0, v1}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    add-int/lit8 v2, v4, 0x1

    const/4 v5, 0x1

    if-ne v7, v2, :cond_3

    .line 28
    iget-object v6, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 29
    invoke-static {v0, v2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result v2

    .line 30
    invoke-static {v6, v2}, Landroid/text/method/WordIterator;->isMidWordPunctuation(Ljava/util/Locale;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v2, v11

    goto :goto_2

    .line 31
    :cond_3
    iget-boolean v2, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz v2, :cond_5

    if-le v8, v3, :cond_4

    if-le v7, v4, :cond_2

    :cond_4
    :goto_1
    move v2, v5

    goto :goto_2

    :cond_5
    if-lt v8, v3, :cond_4

    if-le v7, v4, :cond_2

    goto :goto_1

    :goto_2
    if-ltz v3, :cond_6

    if-le v4, v3, :cond_6

    if-eqz v2, :cond_6

    .line 32
    invoke-virtual {v1, v5}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 33
    new-instance v14, Landroid/view/textservice/TextInfo;

    iget v5, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v6, v1, v12

    move-object v1, v14

    move-object v2, v0

    invoke-direct/range {v1 .. v6}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    add-int/lit8 v1, v13, 0x1

    .line 34
    aput-object v14, v10, v13

    move v13, v1

    :cond_6
    :goto_3
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    :cond_7
    if-lez v13, :cond_a

    if-ge v13, v9, :cond_8

    .line 35
    new-array v0, v13, [Landroid/view/textservice/TextInfo;

    .line 36
    invoke-static {v10, v11, v0, v11, v13}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v10, v0

    .line 37
    :cond_8
    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_9

    .line 38
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0, v10, v1}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    goto :goto_4

    .line 39
    :cond_9
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0, v10, v1, v11}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    :cond_a
    :goto_4
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 9
    .line 10
    array-length v0, v0

    .line 11
    const/4 v1, 0x0

    .line 12
    :goto_0
    if-ge v1, v0, :cond_1

    .line 13
    .line 14
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 15
    .line 16
    aget-object v2, v2, v1

    .line 17
    .line 18
    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    .line 19
    .line 20
    .line 21
    add-int/lit8 v1, v1, 0x1

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    .line 25
    .line 26
    if-eqz v0, :cond_2

    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 29
    .line 30
    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 31
    .line 32
    .line 33
    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/Editable;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    array-length v3, p1

    .line 12
    if-ge v2, v3, :cond_5

    .line 13
    .line 14
    aget-object v3, p1, v2

    .line 15
    .line 16
    if-nez v3, :cond_0

    .line 17
    .line 18
    goto :goto_3

    .line 19
    :cond_0
    const/4 v4, 0x0

    .line 20
    move v5, v1

    .line 21
    :goto_1
    invoke-virtual {v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    .line 22
    .line 23
    .line 24
    move-result v6

    .line 25
    if-ge v5, v6, :cond_3

    .line 26
    .line 27
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    .line 28
    .line 29
    .line 30
    move-result-object v6

    .line 31
    if-nez v6, :cond_1

    .line 32
    .line 33
    goto :goto_2

    .line 34
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    .line 39
    .line 40
    .line 41
    move-result v8

    .line 42
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    .line 43
    .line 44
    .line 45
    move-result-object v6

    .line 46
    if-nez v4, :cond_2

    .line 47
    .line 48
    if-eqz v6, :cond_2

    .line 49
    .line 50
    move-object v4, v6

    .line 51
    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 52
    .line 53
    goto :goto_1

    .line 54
    :cond_3
    if-eqz v4, :cond_4

    .line 55
    .line 56
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 63
    .line 64
    .line 65
    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    .line 2
    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    check-cast v0, Landroid/text/Editable;

    .line 8
    .line 9
    const/4 v1, 0x0

    .line 10
    :goto_0
    array-length v2, p1

    .line 11
    if-ge v1, v2, :cond_1

    .line 12
    .line 13
    aget-object v2, p1, v1

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    if-eqz v2, :cond_0

    .line 21
    .line 22
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 23
    .line 24
    .line 25
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 3
    .line 4
    if-ge v0, v1, :cond_1

    .line 5
    .line 6
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 7
    .line 8
    aget-object v1, v1, v0

    .line 9
    .line 10
    if-ne v1, p1, :cond_0

    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 13
    .line 14
    const/4 v1, -0x1

    .line 15
    aput v1, p1, v0

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 19
    .line 20
    goto :goto_0

    .line 21
    :cond_1
    return-void
.end method

.method public spellCheck(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object v0

    .line 2
    invoke-direct {p0}, Landroid/widget/SpellChecker;->isSessionActive()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 3
    iget-object v3, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v3, :cond_1

    invoke-virtual {v3, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    if-eq v1, v0, :cond_2

    .line 5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 7
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p2

    move p1, v2

    :cond_2
    :goto_1
    if-nez v1, :cond_3

    return-void

    .line 8
    :cond_3
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    move v1, v2

    :goto_2
    if-ge v1, v0, :cond_5

    .line 9
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v3, v3, v1

    .line 10
    invoke-virtual {v3}, Landroid/widget/SpellChecker$SpellParser;->isFinished()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 11
    invoke-virtual {v3, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    return-void

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    add-int/lit8 v1, v0, 0x1

    .line 12
    new-array v1, v1, [Landroid/widget/SpellChecker$SpellParser;

    .line 13
    iget-object v3, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    invoke-static {v3, v2, v1, v2, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 14
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 15
    new-instance v1, Landroid/widget/SpellChecker$SpellParser;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Landroid/widget/SpellChecker$SpellParser;-><init>(Landroid/widget/SpellChecker;Landroid/widget/SpellChecker$1;)V

    .line 16
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aput-object v1, v2, v0

    .line 17
    invoke-virtual {v1, p1, p2}, Landroid/widget/SpellChecker$SpellParser;->parse(II)V

    return-void
.end method
