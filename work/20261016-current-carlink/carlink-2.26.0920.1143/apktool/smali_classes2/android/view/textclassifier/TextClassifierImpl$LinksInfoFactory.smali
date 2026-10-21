.class final Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/textclassifier/TextClassifierImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "LinksInfoFactory"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;,
        Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->lambda$avoidOverlaps$0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result p0

    return p0
.end method

.method private static avoidOverlaps(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance p1, Landroid/view/textclassifier/f;

    .line 2
    .line 3
    invoke-direct {p1}, Landroid/view/textclassifier/f;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-static {p1}, Landroid/text/format/b;->q(Landroid/view/textclassifier/f;)Ljava/util/Comparator;

    .line 7
    .line 8
    .line 9
    move-result-object p1

    .line 10
    invoke-static {p0, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 11
    .line 12
    .line 13
    new-instance p1, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 16
    .line 17
    .line 18
    invoke-interface {p0}, Ljava/util/List;->size()I

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    const/4 v1, 0x0

    .line 23
    :goto_0
    if-ge v1, v0, :cond_2

    .line 24
    .line 25
    invoke-interface {p0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 30
    .line 31
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 36
    .line 37
    .line 38
    move-result-object v3

    .line 39
    invoke-virtual {p1, v3}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    check-cast v3, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 44
    .line 45
    if-eqz v3, :cond_0

    .line 46
    .line 47
    invoke-static {v3}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 48
    .line 49
    .line 50
    move-result v3

    .line 51
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 52
    .line 53
    .line 54
    move-result v4

    .line 55
    if-ge v3, v4, :cond_1

    .line 56
    .line 57
    :cond_0
    invoke-static {v2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 58
    .line 59
    .line 60
    move-result v3

    .line 61
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {p1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    .line 67
    .line 68
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_2
    new-instance p0, Ljava/util/LinkedList;

    .line 72
    .line 73
    invoke-direct {p0}, Ljava/util/LinkedList;-><init>()V

    .line 74
    .line 75
    .line 76
    invoke-virtual {p1}, Ljava/util/LinkedHashMap;->values()Ljava/util/Collection;

    .line 77
    .line 78
    .line 79
    move-result-object p1

    .line 80
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    .line 81
    .line 82
    .line 83
    move-result-object p1

    .line 84
    :cond_3
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 85
    .line 86
    .line 87
    move-result v0

    .line 88
    if-eqz v0, :cond_6

    .line 89
    .line 90
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 91
    .line 92
    .line 93
    move-result-object v0

    .line 94
    check-cast v0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 95
    .line 96
    invoke-virtual {p0}, Ljava/util/AbstractCollection;->isEmpty()Z

    .line 97
    .line 98
    .line 99
    move-result v1

    .line 100
    if-eqz v1, :cond_4

    .line 101
    .line 102
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 103
    .line 104
    .line 105
    goto :goto_1

    .line 106
    :cond_4
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 111
    .line 112
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 113
    .line 114
    .line 115
    move-result v2

    .line 116
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 117
    .line 118
    .line 119
    move-result v3

    .line 120
    if-ge v2, v3, :cond_5

    .line 121
    .line 122
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 123
    .line 124
    .line 125
    move-result v2

    .line 126
    invoke-static {v0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 127
    .line 128
    .line 129
    move-result v3

    .line 130
    sub-int/2addr v2, v3

    .line 131
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$300(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 132
    .line 133
    .line 134
    move-result v3

    .line 135
    invoke-static {v1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    .line 136
    .line 137
    .line 138
    move-result v1

    .line 139
    sub-int/2addr v3, v1

    .line 140
    if-le v2, v3, :cond_3

    .line 141
    .line 142
    invoke-virtual {p0}, Ljava/util/LinkedList;->size()I

    .line 143
    .line 144
    .line 145
    move-result v1

    .line 146
    add-int/lit8 v1, v1, -0x1

    .line 147
    .line 148
    invoke-virtual {p0, v1, v0}, Ljava/util/LinkedList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    goto :goto_1

    .line 152
    :cond_5
    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    .line 153
    .line 154
    .line 155
    goto :goto_1

    .line 156
    :cond_6
    return-object p0
.end method

.method public static create(Landroid/content/Context;Landroid/view/textclassifier/SmartSelection;Ljava/lang/String;I)Landroid/view/textclassifier/LinksInfo;
    .locals 8

    .line 1
    new-instance v0, Landroid/text/method/WordIterator;

    .line 2
    .line 3
    invoke-direct {v0}, Landroid/text/method/WordIterator;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 7
    .line 8
    .line 9
    move-result v1

    .line 10
    const/4 v2, 0x0

    .line 11
    invoke-virtual {v0, p2, v2, v1}, Landroid/text/method/WordIterator;->setCharSequence(Ljava/lang/CharSequence;II)V

    .line 12
    .line 13
    .line 14
    new-instance v1, Ljava/util/ArrayList;

    .line 15
    .line 16
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 17
    .line 18
    .line 19
    move v3, v2

    .line 20
    :goto_0
    invoke-virtual {v0, v3}, Landroid/text/method/WordIterator;->nextBoundary(I)I

    .line 21
    .line 22
    .line 23
    move-result v4

    .line 24
    const/4 v5, -0x1

    .line 25
    if-eq v4, v5, :cond_2

    .line 26
    .line 27
    invoke-virtual {p2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v5

    .line 31
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 32
    .line 33
    .line 34
    move-result v5

    .line 35
    if-eqz v5, :cond_0

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_0
    invoke-virtual {p1, p2, v3, v4}, Landroid/view/textclassifier/SmartSelection;->suggest(Ljava/lang/String;II)[I

    .line 39
    .line 40
    .line 41
    move-result-object v3

    .line 42
    aget v5, v3, v2

    .line 43
    .line 44
    const/4 v6, 0x1

    .line 45
    aget v3, v3, v6

    .line 46
    .line 47
    if-ltz v5, :cond_1

    .line 48
    .line 49
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 50
    .line 51
    .line 52
    move-result v6

    .line 53
    if-gt v3, v6, :cond_1

    .line 54
    .line 55
    if-gt v5, v3, :cond_1

    .line 56
    .line 57
    invoke-static {p2, v5, v3}, Landroid/view/textclassifier/TextClassifierImpl;->access$000(Ljava/lang/CharSequence;II)I

    .line 58
    .line 59
    .line 60
    move-result v6

    .line 61
    invoke-virtual {p1, p2, v5, v3, v6}, Landroid/view/textclassifier/SmartSelection;->classifyText(Ljava/lang/String;III)[Landroid/view/textclassifier/SmartSelection$ClassificationResult;

    .line 62
    .line 63
    .line 64
    move-result-object v6

    .line 65
    array-length v7, v6

    .line 66
    if-lez v7, :cond_1

    .line 67
    .line 68
    invoke-static {v6}, Landroid/view/textclassifier/TextClassifierImpl;->access$100([Landroid/view/textclassifier/SmartSelection$ClassificationResult;)Ljava/lang/String;

    .line 69
    .line 70
    .line 71
    move-result-object v6

    .line 72
    invoke-static {v6, p3}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->matches(Ljava/lang/String;I)Z

    .line 73
    .line 74
    .line 75
    move-result v7

    .line 76
    if-eqz v7, :cond_1

    .line 77
    .line 78
    invoke-virtual {p2, v5, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 79
    .line 80
    .line 81
    move-result-object v7

    .line 82
    invoke-static {p0, v6, v7}, Landroid/view/textclassifier/TextClassifierImpl$IntentFactory;->create(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    .line 84
    .line 85
    move-result-object v6

    .line 86
    invoke-static {p0, v6}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->hasActivityHandler(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 87
    .line 88
    .line 89
    move-result v7

    .line 90
    if-eqz v7, :cond_1

    .line 91
    .line 92
    invoke-static {p0, v6}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;

    .line 93
    .line 94
    .line 95
    move-result-object v6

    .line 96
    new-instance v7, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;

    .line 97
    .line 98
    invoke-direct {v7, v5, v3, v6}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;-><init>(IILandroid/text/style/ClickableSpan;)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    :cond_1
    move v3, v4

    .line 105
    goto :goto_0

    .line 106
    :cond_2
    new-instance p0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;

    .line 107
    .line 108
    invoke-static {v1, p2}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory;->avoidOverlaps(Ljava/util/List;Ljava/lang/String;)Ljava/util/List;

    .line 109
    .line 110
    .line 111
    move-result-object p1

    .line 112
    invoke-direct {p0, p2, p1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$LinksInfoImpl;-><init>(Ljava/lang/CharSequence;Ljava/util/List;)V

    .line 113
    .line 114
    .line 115
    return-object p0
.end method

.method private static createSpan(Landroid/content/Context;Landroid/content/Intent;)Landroid/text/style/ClickableSpan;
    .locals 1

    new-instance v0, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;

    invoke-direct {v0, p0, p1}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$1;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v0
.end method

.method private static hasActivityHandler(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    if-nez p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    .line 10
    .line 11
    .line 12
    move-result-object p0

    .line 13
    if-eqz p0, :cond_1

    .line 14
    .line 15
    iget-object p0, p0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 16
    .line 17
    if-eqz p0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    :cond_1
    return v0
.end method

.method private static synthetic lambda$avoidOverlaps$0(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I
    .locals 0

    invoke-static {p0}, Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;->access$200(Landroid/view/textclassifier/TextClassifierImpl$LinksInfoFactory$SpanSpec;)I

    move-result p0

    return p0
.end method

.method private static matches(Ljava/lang/String;I)Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->trim()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    sget-object v0, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    .line 6
    .line 7
    invoke-virtual {p0, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    and-int/lit8 v0, p1, 0x4

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    const-string v0, "phone"

    .line 17
    .line 18
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 19
    .line 20
    .line 21
    move-result v0

    .line 22
    if-eqz v0, :cond_0

    .line 23
    .line 24
    return v1

    .line 25
    :cond_0
    and-int/lit8 v0, p1, 0x2

    .line 26
    .line 27
    if-eqz v0, :cond_1

    .line 28
    .line 29
    const-string v0, "email"

    .line 30
    .line 31
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-eqz v0, :cond_1

    .line 36
    .line 37
    return v1

    .line 38
    :cond_1
    and-int/lit8 v0, p1, 0x8

    .line 39
    .line 40
    if-eqz v0, :cond_2

    .line 41
    .line 42
    const-string v0, "address"

    .line 43
    .line 44
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    if-eqz v0, :cond_2

    .line 49
    .line 50
    return v1

    .line 51
    :cond_2
    and-int/2addr p1, v1

    .line 52
    if-eqz p1, :cond_3

    .line 53
    .line 54
    const-string/jumbo p1, "url"

    .line 55
    .line 56
    .line 57
    invoke-virtual {p1, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_3

    .line 62
    .line 63
    return v1

    .line 64
    :cond_3
    const/4 p0, 0x0

    .line 65
    return p0
.end method
