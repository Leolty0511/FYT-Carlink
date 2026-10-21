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

    .line 1
    const/4 v0, 0x0

    .line 2
    new-array v1, v0, [Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 3
    .line 4
    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SENTENCE_SUGGESTIONS_INFOS:[Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 5
    .line 6
    new-instance v1, Landroid/view/textservice/SuggestionsInfo;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-direct {v1, v0, v2}, Landroid/view/textservice/SuggestionsInfo;-><init>(I[Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    sput-object v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/util/Locale;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroid/text/method/WordIterator;

    .line 5
    .line 6
    invoke-direct {v0, p1}, Landroid/text/method/WordIterator;-><init>(Ljava/util/Locale;)V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 10
    .line 11
    return-void
.end method

.method public static synthetic access$000(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 0

    invoke-direct {p0, p1}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    move-result-object p0

    return-object p0
.end method

.method private getSplitWords(Landroid/view/textservice/TextInfo;)Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget-object v1, v0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->mWordIterator:Landroid/text/method/WordIterator;

    .line 4
    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getText()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v2

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/view/textservice/TextInfo;->getCookie()I

    .line 10
    .line 11
    .line 12
    move-result v9

    .line 13
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 14
    .line 15
    .line 16
    move-result v10

    .line 17
    new-instance v11, Ljava/util/ArrayList;

    .line 18
    .line 19
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 20
    .line 21
    .line 22
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 23
    .line 24
    .line 25
    move-result v3

    .line 26
    const/4 v4, 0x0

    .line 27
    invoke-virtual {v1, v2, v4, v3}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1, v4}, Landroid/text/method/WordIterator;->following(I)I

    .line 31
    .line 32
    .line 33
    move-result v3

    .line 34
    invoke-virtual {v1, v3}, Landroid/text/method/WordIterator;->getBeginning(I)I

    .line 35
    .line 36
    .line 37
    move-result v4

    .line 38
    move v12, v3

    .line 39
    move v13, v4

    .line 40
    :goto_0
    if-gt v13, v10, :cond_2

    .line 41
    .line 42
    const/4 v14, -0x1

    .line 43
    if-eq v12, v14, :cond_2

    .line 44
    .line 45
    if-eq v13, v14, :cond_2

    .line 46
    .line 47
    if-ltz v12, :cond_0

    .line 48
    .line 49
    if-le v12, v13, :cond_0

    .line 50
    .line 51
    invoke-virtual {v2, v13, v12}, Ljava/lang/String;->subSequence(II)Ljava/lang/CharSequence;

    .line 52
    .line 53
    .line 54
    move-result-object v4

    .line 55
    new-instance v15, Landroid/view/textservice/TextInfo;

    .line 56
    .line 57
    const/4 v5, 0x0

    .line 58
    invoke-interface {v4}, Ljava/lang/CharSequence;->length()I

    .line 59
    .line 60
    .line 61
    move-result v6

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    .line 63
    .line 64
    .line 65
    move-result v8

    .line 66
    move-object v3, v15

    .line 67
    move v7, v9

    .line 68
    invoke-direct/range {v3 .. v8}, Landroid/view/textservice/TextInfo;-><init>(Ljava/lang/CharSequence;IIII)V

    .line 69
    .line 70
    .line 71
    new-instance v3, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .line 72
    .line 73
    invoke-direct {v3, v15, v13, v12}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;-><init>(Landroid/view/textservice/TextInfo;II)V

    .line 74
    .line 75
    .line 76
    invoke-virtual {v11, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    :cond_0
    invoke-virtual {v1, v12}, Landroid/text/method/WordIterator;->following(I)I

    .line 80
    .line 81
    .line 82
    move-result v12

    .line 83
    if-ne v12, v14, :cond_1

    .line 84
    .line 85
    goto :goto_1

    .line 86
    :cond_1
    invoke-virtual {v1, v12}, Landroid/text/method/WordIterator;->getBeginning(I)I

    .line 87
    .line 88
    .line 89
    move-result v13

    .line 90
    goto :goto_0

    .line 91
    :cond_2
    :goto_1
    new-instance v1, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;

    .line 92
    .line 93
    move-object/from16 v2, p1

    .line 94
    .line 95
    invoke-direct {v1, v2, v11}, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;-><init>(Landroid/view/textservice/TextInfo;Ljava/util/ArrayList;)V

    .line 96
    .line 97
    .line 98
    return-object v1
.end method

.method public static reconstructSuggestions(Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;[Landroid/view/textservice/SuggestionsInfo;)Landroid/view/textservice/SentenceSuggestionsInfo;
    .locals 14

    .line 1
    const/4 v0, 0x0

    .line 2
    if-eqz p1, :cond_6

    .line 3
    .line 4
    array-length v1, p1

    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_4

    .line 8
    :cond_0
    if-nez p0, :cond_1

    .line 9
    .line 10
    return-object v0

    .line 11
    :cond_1
    iget-object v1, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    .line 12
    .line 13
    invoke-virtual {v1}, Landroid/view/textservice/TextInfo;->getCookie()I

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    iget-object v2, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mOriginalTextInfo:Landroid/view/textservice/TextInfo;

    .line 18
    .line 19
    invoke-virtual {v2}, Landroid/view/textservice/TextInfo;->getSequence()I

    .line 20
    .line 21
    .line 22
    move-result v2

    .line 23
    iget v3, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mSize:I

    .line 24
    .line 25
    new-array v4, v3, [I

    .line 26
    .line 27
    new-array v5, v3, [I

    .line 28
    .line 29
    new-array v6, v3, [Landroid/view/textservice/SuggestionsInfo;

    .line 30
    .line 31
    const/4 v7, 0x0

    .line 32
    move v8, v7

    .line 33
    :goto_0
    if-ge v8, v3, :cond_5

    .line 34
    .line 35
    iget-object v9, p0, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceTextInfoParams;->mItems:Ljava/util/ArrayList;

    .line 36
    .line 37
    invoke-virtual {v9, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 38
    .line 39
    .line 40
    move-result-object v9

    .line 41
    check-cast v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;

    .line 42
    .line 43
    move v10, v7

    .line 44
    :goto_1
    array-length v11, p1

    .line 45
    if-ge v10, v11, :cond_3

    .line 46
    .line 47
    aget-object v11, p1, v10

    .line 48
    .line 49
    if-eqz v11, :cond_2

    .line 50
    .line 51
    invoke-virtual {v11}, Landroid/view/textservice/SuggestionsInfo;->getSequence()I

    .line 52
    .line 53
    .line 54
    move-result v12

    .line 55
    iget-object v13, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mTextInfo:Landroid/view/textservice/TextInfo;

    .line 56
    .line 57
    invoke-virtual {v13}, Landroid/view/textservice/TextInfo;->getSequence()I

    .line 58
    .line 59
    .line 60
    move-result v13

    .line 61
    if-ne v12, v13, :cond_2

    .line 62
    .line 63
    invoke-virtual {v11, v1, v2}, Landroid/view/textservice/SuggestionsInfo;->setCookieAndSequence(II)V

    .line 64
    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    add-int/lit8 v10, v10, 0x1

    .line 68
    .line 69
    goto :goto_1

    .line 70
    :cond_3
    move-object v11, v0

    .line 71
    :goto_2
    iget v10, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mStart:I

    .line 72
    .line 73
    aput v10, v4, v8

    .line 74
    .line 75
    iget v9, v9, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter$SentenceWordItem;->mLength:I

    .line 76
    .line 77
    aput v9, v5, v8

    .line 78
    .line 79
    if-eqz v11, :cond_4

    .line 80
    .line 81
    goto :goto_3

    .line 82
    :cond_4
    sget-object v11, Landroid/service/textservice/SpellCheckerService$SentenceLevelAdapter;->EMPTY_SUGGESTIONS_INFO:Landroid/view/textservice/SuggestionsInfo;

    .line 83
    .line 84
    :goto_3
    aput-object v11, v6, v8

    .line 85
    .line 86
    add-int/lit8 v8, v8, 0x1

    .line 87
    .line 88
    goto :goto_0

    .line 89
    :cond_5
    new-instance p0, Landroid/view/textservice/SentenceSuggestionsInfo;

    .line 90
    .line 91
    invoke-direct {p0, v6, v4, v5}, Landroid/view/textservice/SentenceSuggestionsInfo;-><init>([Landroid/view/textservice/SuggestionsInfo;[I[I)V

    .line 92
    .line 93
    .line 94
    return-object p0

    .line 95
    :cond_6
    :goto_4
    return-object v0
.end method
