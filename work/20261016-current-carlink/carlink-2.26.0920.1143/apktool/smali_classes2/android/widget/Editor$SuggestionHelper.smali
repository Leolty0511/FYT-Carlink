.class Landroid/widget/Editor$SuggestionHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SuggestionHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;
    }
.end annotation


# instance fields
.field private final mSpansLengths:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Landroid/text/style/SuggestionSpan;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mSuggestionSpanComparator:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Landroid/text/style/SuggestionSpan;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Landroid/widget/Editor;


# direct methods
.method private constructor <init>(Landroid/widget/Editor;)V
    .locals 1

    .line 1
    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Landroid/widget/Editor$SuggestionHelper$SuggestionSpanComparator;-><init>(Landroid/widget/Editor$SuggestionHelper;Landroid/widget/Editor$1;)V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 3
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/Editor;Landroid/widget/Editor$1;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Landroid/widget/Editor$SuggestionHelper;-><init>(Landroid/widget/Editor;)V

    return-void
.end method

.method public static synthetic access$2300(Landroid/widget/Editor$SuggestionHelper;)Ljava/util/HashMap;
    .locals 0

    iget-object p0, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    return-object p0
.end method

.method private getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getSelectionStart()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    .line 12
    .line 13
    invoke-static {v1}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 14
    .line 15
    .line 16
    move-result-object v1

    .line 17
    invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    check-cast v1, Landroid/text/Spannable;

    .line 22
    .line 23
    const-class v2, Landroid/text/style/SuggestionSpan;

    .line 24
    .line 25
    invoke-interface {v1, v0, v0, v2}, Landroid/text/Spanned;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    check-cast v0, [Landroid/text/style/SuggestionSpan;

    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 34
    .line 35
    .line 36
    array-length v2, v0

    .line 37
    const/4 v3, 0x0

    .line 38
    :goto_0
    if-ge v3, v2, :cond_0

    .line 39
    .line 40
    aget-object v4, v0, v3

    .line 41
    .line 42
    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 43
    .line 44
    .line 45
    move-result v5

    .line 46
    invoke-interface {v1, v4}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 47
    .line 48
    .line 49
    move-result v6

    .line 50
    iget-object v7, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    .line 51
    .line 52
    sub-int/2addr v6, v5

    .line 53
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 54
    .line 55
    .line 56
    move-result-object v5

    .line 57
    invoke-virtual {v7, v4, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    add-int/lit8 v3, v3, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_0
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->mSuggestionSpanComparator:Ljava/util/Comparator;

    .line 64
    .line 65
    invoke-static {v0, v1}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    .line 66
    .line 67
    .line 68
    iget-object v1, p0, Landroid/widget/Editor$SuggestionHelper;->mSpansLengths:Ljava/util/HashMap;

    .line 69
    .line 70
    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 71
    .line 72
    .line 73
    return-object v0
.end method


# virtual methods
.method public getSuggestionInfo([Landroid/widget/Editor$SuggestionInfo;Landroid/widget/Editor$SuggestionSpanInfo;)I
    .locals 16

    .line 1
    move-object/from16 v0, p1

    .line 2
    .line 3
    move-object/from16 v1, p0

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    iget-object v3, v1, Landroid/widget/Editor$SuggestionHelper;->this$0:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v3}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 10
    .line 11
    .line 12
    move-result-object v3

    .line 13
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroid/text/Spannable;

    .line 18
    .line 19
    invoke-direct/range {p0 .. p0}, Landroid/widget/Editor$SuggestionHelper;->getSortedSuggestionSpans()[Landroid/text/style/SuggestionSpan;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    array-length v5, v4

    .line 24
    const/4 v6, 0x0

    .line 25
    if-nez v5, :cond_0

    .line 26
    .line 27
    return v6

    .line 28
    :cond_0
    array-length v5, v4

    .line 29
    move v7, v6

    .line 30
    move v8, v7

    .line 31
    :goto_0
    if-ge v7, v5, :cond_6

    .line 32
    .line 33
    aget-object v9, v4, v7

    .line 34
    .line 35
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanStart(Ljava/lang/Object;)I

    .line 36
    .line 37
    .line 38
    move-result v10

    .line 39
    invoke-interface {v3, v9}, Landroid/text/Spanned;->getSpanEnd(Ljava/lang/Object;)I

    .line 40
    .line 41
    .line 42
    move-result v11

    .line 43
    if-eqz v2, :cond_1

    .line 44
    .line 45
    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getFlags()I

    .line 46
    .line 47
    .line 48
    move-result v12

    .line 49
    and-int/lit8 v12, v12, 0x2

    .line 50
    .line 51
    if-eqz v12, :cond_1

    .line 52
    .line 53
    iput-object v9, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSuggestionSpan:Landroid/text/style/SuggestionSpan;

    .line 54
    .line 55
    iput v10, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 56
    .line 57
    iput v11, v2, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 58
    .line 59
    :cond_1
    invoke-virtual {v9}, Landroid/text/style/SuggestionSpan;->getSuggestions()[Ljava/lang/String;

    .line 60
    .line 61
    .line 62
    move-result-object v12

    .line 63
    array-length v13, v12

    .line 64
    move v14, v6

    .line 65
    :goto_1
    if-ge v14, v13, :cond_5

    .line 66
    .line 67
    aget-object v15, v12, v14

    .line 68
    .line 69
    :goto_2
    if-ge v6, v8, :cond_3

    .line 70
    .line 71
    aget-object v1, v0, v6

    .line 72
    .line 73
    iget-object v2, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 74
    .line 75
    invoke-virtual {v2}, Landroid/text/SpannableStringBuilder;->toString()Ljava/lang/String;

    .line 76
    .line 77
    .line 78
    move-result-object v2

    .line 79
    invoke-virtual {v2, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 80
    .line 81
    .line 82
    move-result v2

    .line 83
    if-eqz v2, :cond_2

    .line 84
    .line 85
    iget-object v1, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionSpanInfo:Landroid/widget/Editor$SuggestionSpanInfo;

    .line 86
    .line 87
    iget v2, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanStart:I

    .line 88
    .line 89
    iget v1, v1, Landroid/widget/Editor$SuggestionSpanInfo;->mSpanEnd:I

    .line 90
    .line 91
    if-ne v10, v2, :cond_2

    .line 92
    .line 93
    if-ne v11, v1, :cond_2

    .line 94
    .line 95
    const/4 v2, 0x0

    .line 96
    goto :goto_3

    .line 97
    :cond_2
    add-int/lit8 v6, v6, 0x1

    .line 98
    .line 99
    move-object/from16 v1, p0

    .line 100
    .line 101
    move-object/from16 v2, p2

    .line 102
    .line 103
    goto :goto_2

    .line 104
    :cond_3
    aget-object v1, v0, v8

    .line 105
    .line 106
    invoke-virtual {v1, v9, v10, v11}, Landroid/widget/Editor$SuggestionInfo;->setSpanInfo(Landroid/text/style/SuggestionSpan;II)V

    .line 107
    .line 108
    .line 109
    iput v14, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionIndex:I

    .line 110
    .line 111
    const/4 v2, 0x0

    .line 112
    iput v2, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionStart:I

    .line 113
    .line 114
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    .line 115
    .line 116
    .line 117
    move-result v6

    .line 118
    iput v6, v1, Landroid/widget/Editor$SuggestionInfo;->mSuggestionEnd:I

    .line 119
    .line 120
    iget-object v1, v1, Landroid/widget/Editor$SuggestionInfo;->mText:Landroid/text/SpannableStringBuilder;

    .line 121
    .line 122
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    .line 123
    .line 124
    .line 125
    move-result v6

    .line 126
    invoke-virtual {v1, v2, v6, v15}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 127
    .line 128
    .line 129
    add-int/lit8 v8, v8, 0x1

    .line 130
    .line 131
    array-length v1, v0

    .line 132
    if-lt v8, v1, :cond_4

    .line 133
    .line 134
    return v8

    .line 135
    :cond_4
    :goto_3
    add-int/lit8 v14, v14, 0x1

    .line 136
    .line 137
    move-object/from16 v1, p0

    .line 138
    .line 139
    move v6, v2

    .line 140
    move-object/from16 v2, p2

    .line 141
    .line 142
    goto :goto_1

    .line 143
    :cond_5
    move v2, v6

    .line 144
    add-int/lit8 v7, v7, 0x1

    .line 145
    .line 146
    move-object/from16 v1, p0

    .line 147
    .line 148
    move-object/from16 v2, p2

    .line 149
    .line 150
    goto :goto_0

    .line 151
    :cond_6
    return v8
.end method
