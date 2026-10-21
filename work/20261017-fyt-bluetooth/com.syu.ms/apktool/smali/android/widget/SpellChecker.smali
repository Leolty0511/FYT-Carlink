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
.field public final mCookie:I

.field private mCurrentLocale:Ljava/util/Locale;

.field private mIds:[I

.field private mIsSentenceSpellCheckSupported:Z

.field private mLength:I

.field private mSpanSequenceCounter:I

.field private mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

.field public mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

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
.method public static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/widget/TextView;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/widget/SpellChecker$SpellParser;

    .line 2
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    .line 3
    iput v0, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    .line 4
    new-instance v0, Landroid/util/LruCache;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Landroid/util/LruCache;-><init>(I)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    .line 5
    iput-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 6
    invoke-static {v0}, Lu/a;->j(I)I

    move-result v0

    .line 7
    new-array v1, v0, [I

    iput-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 8
    new-array v0, v0, [Landroid/text/style/SpellCheckSpan;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 9
    invoke-virtual {p1}, Landroid/widget/TextView;->getSpellCheckerLocale()Ljava/util/Locale;

    move-result-object p1

    invoke-direct {p0, p1}, Landroid/widget/SpellChecker;->setLocale(Ljava/util/Locale;)V

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p1

    iput p1, p0, Landroid/widget/SpellChecker;->mCookie:I

    return-void
.end method

.method public static synthetic access$100(Landroid/widget/SpellChecker;)[Landroid/widget/SpellChecker$SpellParser;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    return-object p0
.end method

.method public static synthetic access$1000(Landroid/widget/SpellChecker;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public static synthetic access$200(Landroid/widget/SpellChecker;)Landroid/widget/TextView;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    return-object p0
.end method

.method public static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Landroid/widget/SpellChecker;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method public static synthetic access$400(Landroid/widget/SpellChecker;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    return p0
.end method

.method public static synthetic access$500(Landroid/widget/SpellChecker;)Landroid/text/method/WordIterator;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    return-object p0
.end method

.method public static synthetic access$600(Landroid/widget/SpellChecker;)I
    .locals 0

    .line 1
    iget p0, p0, Landroid/widget/SpellChecker;->mLength:I

    return p0
.end method

.method public static synthetic access$700(Landroid/widget/SpellChecker;)[Landroid/text/style/SpellCheckSpan;
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    return-object p0
.end method

.method public static synthetic access$800(Landroid/widget/SpellChecker;)[I
    .locals 0

    .line 1
    iget-object p0, p0, Landroid/widget/SpellChecker;->mIds:[I

    return-object p0
.end method

.method public static synthetic access$900(Landroid/widget/SpellChecker;Landroid/text/Editable;II)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/SpellChecker;->addSpellCheckSpan(Landroid/text/Editable;II)V

    return-void
.end method

.method private addSpellCheckSpan(Landroid/text/Editable;II)V
    .locals 3

    .line 1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->nextSpellCheckSpanIndex()I

    move-result v0

    .line 2
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    const/16 v2, 0x21

    .line 3
    invoke-interface {p1, v1, p2, p3, v2}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v1, p1}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    .line 5
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    iget p2, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    add-int/lit8 p3, p2, 0x1

    iput p3, p0, Landroid/widget/SpellChecker;->mSpanSequenceCounter:I

    aput p2, p1, v0

    return-void
.end method

.method private createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V
    .locals 4

    .line 1
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v0

    .line 2
    invoke-interface {p1, p3}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result p3

    if-ltz v0, :cond_6

    if-gt p3, v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v1, -0x1

    if-eq p4, v1, :cond_1

    if-eq p5, v1, :cond_1

    add-int/2addr v0, p4

    add-int p3, v0, p5

    .line 3
    :cond_1
    invoke-virtual {p2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsCount()I

    move-result p4

    const/4 p5, 0x0

    if-lez p4, :cond_2

    .line 4
    new-array v1, p4, [Ljava/lang/String;

    move v2, p5

    :goto_0
    if-ge v2, p4, :cond_3

    .line 5
    invoke-virtual {p2, v2}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionAt(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 6
    :cond_2
    const-class p2, Ljava/lang/String;

    invoke-static {p2}, Lu/a;->d(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    move-object v1, p2

    check-cast v1, [Ljava/lang/String;

    .line 7
    :cond_3
    new-instance p2, Landroid/text/style/SuggestionSpan;

    iget-object p4, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p4

    const/4 v2, 0x3

    invoke-direct {p2, p4, v1, v2}, Landroid/text/style/SuggestionSpan;-><init>(Landroid/content/Context;[Ljava/lang/String;I)V

    .line 8
    iget-boolean p4, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz p4, :cond_5

    .line 9
    invoke-static {v0, p3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    .line 10
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1, p4}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/text/style/SuggestionSpan;

    if-eqz v1, :cond_4

    .line 11
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 12
    :cond_4
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v1, p4, p2}, Landroid/util/LruCache;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    const/16 p4, 0x21

    .line 13
    invoke-interface {p1, p2, v0, p3, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 14
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1, v0, p3, p5}, Landroid/widget/TextView;->invalidateRegion(IIZ)V

    :cond_6
    :goto_1
    return-void
.end method

.method public static haveWordBoundariesChanged(Landroid/text/Editable;IIII)Z
    .locals 0

    if-eq p4, p1, :cond_0

    if-eq p3, p2, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    if-ne p4, p1, :cond_1

    .line 1
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result p4

    if-ge p1, p4, :cond_1

    .line 2
    invoke-static {p0, p1}, Ljava/lang/Character;->codePointAt(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 3
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    goto :goto_0

    :cond_1
    if-ne p3, p2, :cond_2

    if-lez p2, :cond_2

    .line 4
    invoke-static {p0, p2}, Ljava/lang/Character;->codePointBefore(Ljava/lang/CharSequence;I)I

    move-result p0

    .line 5
    invoke-static {p0}, Ljava/lang/Character;->isLetterOrDigit(I)Z

    move-result p0

    goto :goto_0

    :cond_2
    const/4 p0, 0x0

    :goto_0
    return p0
.end method

.method private isSessionActive()Z
    .locals 1

    .line 1
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
    .locals 5

    const/4 v0, 0x0

    move v1, v0

    .line 1
    :goto_0
    iget v2, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v1, v2, :cond_1

    .line 2
    iget-object v2, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v2, v2, v1

    if-gez v2, :cond_0

    return v1

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3
    :cond_1
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    array-length v1, v1

    if-ne v2, v1, :cond_2

    mul-int/lit8 v1, v2, 0x2

    .line 4
    new-array v3, v1, [I

    .line 5
    new-array v1, v1, [Landroid/text/style/SpellCheckSpan;

    .line 6
    iget-object v4, p0, Landroid/widget/SpellChecker;->mIds:[I

    invoke-static {v4, v0, v3, v0, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 7
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v4, p0, Landroid/widget/SpellChecker;->mLength:I

    invoke-static {v2, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 8
    iput-object v3, p0, Landroid/widget/SpellChecker;->mIds:[I

    .line 9
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    new-instance v2, Landroid/text/style/SpellCheckSpan;

    invoke-direct {v2}, Landroid/text/style/SpellCheckSpan;-><init>()V

    aput-object v2, v0, v1

    .line 11
    iget v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Landroid/widget/SpellChecker;->mLength:I

    add-int/lit8 v0, v0, -0x1

    return v0
.end method

.method private onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;
    .locals 8

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    .line 1
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getCookie()I

    move-result v1

    iget v2, p0, Landroid/widget/SpellChecker;->mCookie:I

    if-eq v1, v2, :cond_0

    goto/16 :goto_4

    .line 2
    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Landroid/text/Editable;

    .line 3
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v1

    const/4 v2, 0x0

    move v4, v2

    .line 4
    :goto_0
    iget v5, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v4, v5, :cond_7

    .line 5
    iget-object v5, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v5, v5, v4

    if-ne v1, v5, :cond_6

    .line 6
    invoke-virtual {p1}, Landroid/view/textservice/SuggestionsInfo;->getSuggestionsAttributes()I

    move-result v0

    and-int/lit8 v1, v0, 0x1

    const/4 v5, 0x1

    if-lez v1, :cond_1

    move v1, v5

    goto :goto_1

    :cond_1
    move v1, v2

    :goto_1
    and-int/lit8 v0, v0, 0x2

    if-lez v0, :cond_2

    move v2, v5

    .line 7
    :cond_2
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v0, v0, v4

    if-nez v1, :cond_3

    if-eqz v2, :cond_3

    move-object v2, p0

    move-object v4, p1

    move-object v5, v0

    move v6, p2

    move v7, p3

    .line 8
    invoke-direct/range {v2 .. v7}, Landroid/widget/SpellChecker;->createMisspelledSuggestionSpan(Landroid/text/Editable;Landroid/view/textservice/SuggestionsInfo;Landroid/text/style/SpellCheckSpan;II)V

    goto :goto_3

    .line 9
    :cond_3
    iget-boolean p1, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    if-eqz p1, :cond_5

    .line 10
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result p1

    .line 11
    invoke-interface {v3, v0}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq p2, v2, :cond_4

    if-eq p3, v2, :cond_4

    add-int/2addr p2, p1

    add-int/2addr p3, p2

    goto :goto_2

    :cond_4
    move p2, p1

    move p3, v1

    :goto_2
    if-ltz p1, :cond_5

    if-le v1, p1, :cond_5

    if-le p3, p2, :cond_5

    .line 12
    invoke-static {p2, p3}, Landroid/text/TextUtils;->packRangeInLong(II)J

    move-result-wide p1

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 13
    iget-object p2, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/text/style/SuggestionSpan;

    if-eqz p2, :cond_5

    .line 14
    invoke-interface {v3, p2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 15
    iget-object p2, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {p2, p1}, Landroid/util/LruCache;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_3
    return-object v0

    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_7
    :goto_4
    return-object v0
.end method

.method private resetSession()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/widget/SpellChecker;->closeSession()V

    .line 2
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "textservices"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/textservice/TextServicesManager;

    iput-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    .line 3
    invoke-virtual {v0}, Landroid/view/textservice/TextServicesManager;->isSpellCheckerEnabled()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/view/textservice/TextServicesManager;->getCurrentSpellCheckerSubtype(Z)Landroid/view/textservice/SpellCheckerSubtype;

    move-result-object v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextServicesManager:Landroid/view/textservice/TextServicesManager;

    iget-object v4, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {v0, v1, v4, p0, v2}, Landroid/view/textservice/TextServicesManager;->newSpellCheckerSession(Landroid/os/Bundle;Ljava/util/Locale;Landroid/view/textservice/SpellCheckerSession$SpellCheckerSessionListener;Z)Landroid/view/textservice/SpellCheckerSession;

    move-result-object v0

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    .line 5
    iput-boolean v3, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    goto :goto_1

    .line 6
    :cond_1
    :goto_0
    iput-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    :goto_1
    move v0, v2

    .line 7
    :goto_2
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_2

    .line 8
    iget-object v1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v3, -0x1

    aput v3, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 9
    :cond_2
    iput v2, p0, Landroid/widget/SpellChecker;->mLength:I

    .line 10
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Landroid/text/Editable;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->removeMisspelledSpans(Landroid/text/Spannable;)V

    .line 11
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSuggestionSpanCache:Landroid/util/LruCache;

    invoke-virtual {v0}, Landroid/util/LruCache;->evictAll()V

    return-void
.end method

.method private scheduleNewSpellCheck()V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroid/widget/SpellChecker$1;

    invoke-direct {v0, p0}, Landroid/widget/SpellChecker$1;-><init>(Landroid/widget/SpellChecker;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    goto :goto_0

    .line 3
    :cond_0
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 4
    :goto_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x190

    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private setLocale(Ljava/util/Locale;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/SpellChecker;->mCurrentLocale:Ljava/util/Locale;

    .line 2
    invoke-direct {p0}, Landroid/widget/SpellChecker;->resetSession()V

    if-eqz p1, :cond_0

    .line 3
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/widget/SpellChecker;->mWordIterator:Landroid/text/method/WordIterator;

    .line 4
    :cond_0
    iget-object p1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->onLocaleChanged()V

    return-void
.end method

.method private spellCheck()V
    .locals 13

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

    move-result v1

    .line 21
    invoke-static {v0}, Landroid/text/Selection;->getSelectionEnd(Ljava/lang/CharSequence;)I

    move-result v2

    .line 22
    iget v3, p0, Landroid/widget/SpellChecker;->mLength:I

    new-array v4, v3, [Landroid/view/textservice/TextInfo;

    const/4 v5, 0x0

    move v6, v5

    move v7, v6

    .line 23
    :goto_0
    iget v8, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v6, v8, :cond_7

    .line 24
    iget-object v8, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v8, v8, v6

    .line 25
    iget-object v9, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v9, v9, v6

    if-ltz v9, :cond_6

    invoke-virtual {v8}, Landroid/text/style/SpellCheckSpan;->isSpellCheckInProgress()Z

    move-result v9

    if-eqz v9, :cond_1

    goto :goto_4

    .line 26
    :cond_1
    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    move-result v9

    .line 27
    invoke-interface {v0, v8}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    move-result v10

    .line 28
    iget-boolean v11, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    const/4 v12, 0x1

    if-eqz v11, :cond_4

    if-le v2, v9, :cond_3

    if-le v1, v10, :cond_2

    goto :goto_1

    :cond_2
    move v11, v5

    goto :goto_2

    :cond_3
    :goto_1
    move v11, v12

    goto :goto_2

    :cond_4
    if-lt v2, v9, :cond_3

    if-le v1, v10, :cond_2

    goto :goto_1

    :goto_2
    if-ltz v9, :cond_6

    if-le v10, v9, :cond_6

    if-eqz v11, :cond_6

    .line 29
    instance-of v11, v0, Landroid/text/SpannableStringBuilder;

    if-eqz v11, :cond_5

    move-object v11, v0

    check-cast v11, Landroid/text/SpannableStringBuilder;

    invoke-virtual {v11, v9, v10}, Landroid/text/SpannableStringBuilder;->substring(II)Ljava/lang/String;

    move-result-object v9

    goto :goto_3

    :cond_5
    invoke-interface {v0, v9, v10}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    .line 30
    :goto_3
    invoke-virtual {v8, v12}, Landroid/text/style/SpellCheckSpan;->setSpellCheckInProgress(Z)V

    add-int/lit8 v8, v7, 0x1

    .line 31
    new-instance v10, Landroid/view/textservice/TextInfo;

    iget v11, p0, Landroid/widget/SpellChecker;->mCookie:I

    iget-object v12, p0, Landroid/widget/SpellChecker;->mIds:[I

    aget v12, v12, v6

    invoke-direct {v10, v9, v11, v12}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    aput-object v10, v4, v7

    move v7, v8

    :cond_6
    :goto_4
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_7
    if-lez v7, :cond_a

    if-ge v7, v3, :cond_8

    .line 32
    new-array v0, v7, [Landroid/view/textservice/TextInfo;

    .line 33
    invoke-static {v4, v5, v0, v5, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object v4, v0

    .line 34
    :cond_8
    iget-boolean v0, p0, Landroid/widget/SpellChecker;->mIsSentenceSpellCheckSupported:Z

    const/4 v1, 0x5

    if-eqz v0, :cond_9

    .line 35
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0, v4, v1}, Landroid/view/textservice/SpellCheckerSession;->getSentenceSuggestions([Landroid/view/textservice/TextInfo;I)V

    goto :goto_5

    .line 36
    :cond_9
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    invoke-virtual {v0, v4, v1, v5}, Landroid/view/textservice/SpellCheckerSession;->getSuggestions([Landroid/view/textservice/TextInfo;IZ)V

    :cond_a
    :goto_5
    return-void
.end method


# virtual methods
.method public closeSession()V
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellCheckerSession:Landroid/view/textservice/SpellCheckerSession;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/view/textservice/SpellCheckerSession;->close()V

    .line 3
    :cond_0
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 4
    iget-object v2, p0, Landroid/widget/SpellChecker;->mSpellParsers:[Landroid/widget/SpellChecker$SpellParser;

    aget-object v2, v2, v1

    invoke-virtual {v2}, Landroid/widget/SpellChecker$SpellParser;->stop()V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mSpellRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_2
    return-void
.end method

.method public onGetSentenceSuggestions([Landroid/view/textservice/SentenceSuggestionsInfo;)V
    .locals 9

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    move v2, v1

    .line 2
    :goto_0
    array-length v3, p1

    if-ge v2, v3, :cond_5

    .line 3
    aget-object v3, p1, v2

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    const/4 v4, 0x0

    move v5, v1

    .line 4
    :goto_1
    invoke-virtual {v3}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsCount()I

    move-result v6

    if-ge v5, v6, :cond_3

    .line 5
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getSuggestionsInfoAt(I)Landroid/view/textservice/SuggestionsInfo;

    move-result-object v6

    if-nez v6, :cond_1

    goto :goto_2

    .line 6
    :cond_1
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getOffsetAt(I)I

    move-result v7

    .line 7
    invoke-virtual {v3, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;->getLengthAt(I)I

    move-result v8

    .line 8
    invoke-direct {p0, v6, v7, v8}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v6

    if-nez v4, :cond_2

    if-eqz v6, :cond_2

    move-object v4, v6

    :cond_2
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_3
    if-eqz v4, :cond_4

    .line 9
    invoke-interface {v0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 10
    :cond_5
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method public onGetSuggestions([Landroid/view/textservice/SuggestionsInfo;)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/SpellChecker;->mTextView:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    const/4 v1, 0x0

    .line 2
    :goto_0
    array-length v2, p1

    if-ge v1, v2, :cond_1

    .line 3
    aget-object v2, p1, v1

    const/4 v3, -0x1

    invoke-direct {p0, v2, v3, v3}, Landroid/widget/SpellChecker;->onGetSuggestionsInternal(Landroid/view/textservice/SuggestionsInfo;II)Landroid/text/style/SpellCheckSpan;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-interface {v0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 5
    :cond_1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->scheduleNewSpellCheck()V

    return-void
.end method

.method public onSelectionChanged()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/SpellChecker;->spellCheck()V

    return-void
.end method

.method public onSpellCheckSpanRemoved(Landroid/text/style/SpellCheckSpan;)V
    .locals 2

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget v1, p0, Landroid/widget/SpellChecker;->mLength:I

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/widget/SpellChecker;->mSpellCheckSpans:[Landroid/text/style/SpellCheckSpan;

    aget-object v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 3
    iget-object p1, p0, Landroid/widget/SpellChecker;->mIds:[I

    const/4 v1, -0x1

    aput v1, p1, v0

    return-void

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

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
