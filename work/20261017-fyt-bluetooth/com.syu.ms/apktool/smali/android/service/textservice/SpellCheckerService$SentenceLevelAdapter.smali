.class Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/service/textservice/SpellCheckerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SentenceLevelAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;,
        Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;
    }
.end annotation


# static fields
.field public static final EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

.field private static final EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;


# instance fields
.field private final mWordIterator:Landroid/text/method/WordIterator;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x0

    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 1
    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 2
    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/text/method/WordIterator;

    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    return-void
.end method

.method public static synthetic access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object p0

    return-object p0
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 11

    .line 1
    iget-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 2
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v2

    .line 4
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    .line 5
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 6
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v5

    const/4 v6, 0x0

    invoke-virtual {v0, v1, v6, v5}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 7
    invoke-virtual {v0, v6}, Landroid/text/method/WordIterator;->following(I)I

    move-result v5

    .line 8
    invoke-virtual {v0, v5}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v6

    :goto_0
    if-gt v6, v3, :cond_2

    const/4 v7, -0x1

    if-eq v5, v7, :cond_2

    if-eq v6, v7, :cond_2

    if-ltz v5, :cond_0

    if-le v5, v6, :cond_0

    .line 9
    invoke-interface {v1, v6, v5}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 10
    new-instance v9, Landroid/view/textservice/TextInfo;

    invoke-virtual {v8}, Ljava/lang/String;->hashCode()I

    move-result v10

    invoke-direct {v9, v8, v2, v10}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/String;II)V

    .line 11
    new-instance v8, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    invoke-direct {v8, v9, v6, v5}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    invoke-virtual {v4, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    :cond_0
    invoke-virtual {v0, v5}, Landroid/text/method/WordIterator;->following(I)I

    move-result v5

    if-ne v5, v7, :cond_1

    goto :goto_1

    .line 13
    :cond_1
    invoke-virtual {v0, v5}, Landroid/text/method/WordIterator;->getBeginning(I)I

    move-result v6

    goto :goto_0

    .line 14
    :cond_2
    :goto_1
    new-instance v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    invoke-direct {v0, p1, v4}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    return-object v0
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 14

    const/4 v0, 0x0

    if-eqz p1, :cond_6

    .line 1
    array-length v1, p1

    if-nez v1, :cond_0

    goto :goto_4

    :cond_0
    if-nez p0, :cond_1

    return-object v0

    .line 2
    :cond_1
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getCookie()I

    move-result v1

    .line 3
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v2}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v2

    .line 4
    iget v3, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 5
    new-array v4, v3, [I

    .line 6
    new-array v5, v3, [I

    .line 7
    new-array v6, v3, [Landroid/view/textservice/SuggestionsInfo;

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v3, :cond_5

    .line 8
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    move v10, v7

    .line 9
    :goto_1
    array-length v11, p1

    if-ge v10, v11, :cond_3

    .line 10
    aget-object v11, p1, v10

    if-eqz v11, :cond_2

    .line 11
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    move-result v12

    iget-object v13, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    invoke-virtual {v13}, Landroid/view/textservice/TextInfo;->getSequence()I

    move-result v13

    if-ne v12, v13, :cond_2

    .line 12
    invoke-virtual {v11, v1, v2}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    goto :goto_2

    :cond_2
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    :cond_3
    move-object v11, v0

    .line 13
    :goto_2
    iget v10, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    aput v10, v4, v8

    .line 14
    iget v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    aput v9, v5, v8

    if-eqz v11, :cond_4

    goto :goto_3

    .line 15
    :cond_4
    sget-object v11, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    :goto_3
    aput-object v11, v6, v8

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 16
    :cond_5
    new-instance p0, Landroid/view/textservice/SentenceSuggestionsInfo;

    invoke-direct {p0, v6, v4, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    return-object p0

    :cond_6
    :goto_4
    return-object v0
.end method
