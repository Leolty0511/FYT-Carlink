.class public Landroid/text/AutoText;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT:I = 0x3801

.field private static final INCREMENT:I = 0x400

.field private static final RIGHT:I = 0x2454

.field private static final TRIE_C:I = 0x0

.field private static final TRIE_CHILD:I = 0x2

.field private static final TRIE_NEXT:I = 0x3

.field private static final TRIE_NULL:C = '\uffff'

.field private static final TRIE_OFF:I = 0x1

.field private static final TRIE_ROOT:I = 0x0

.field private static final TRIE_SIZEOF:I = 0x4

.field private static sInstance:Landroid/text/AutoText;

.field private static sLock:Ljava/lang/Object;


# instance fields
.field private mLocale:Ljava/util/Locale;

.field private mSize:I

.field private mText:Ljava/lang/String;

.field private mTrie:[C

.field private mTrieUsed:C


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/text/AutoText;

    .line 2
    .line 3
    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    .line 4
    .line 5
    .line 6
    move-result-object v1

    .line 7
    invoke-direct {v0, v1}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .line 8
    .line 9
    .line 10
    sput-object v0, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 11
    .line 12
    new-instance v0, Ljava/lang/Object;

    .line 13
    .line 14
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 15
    .line 16
    .line 17
    sput-object v0, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    .line 18
    .line 19
    return-void
.end method

.method private constructor <init>(Landroid/content/res/Resources;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 9
    .line 10
    iput-object v0, p0, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 11
    .line 12
    invoke-direct {p0, p1}, Landroid/text/AutoText;->init(Landroid/content/res/Resources;)V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method private add(Ljava/lang/String;C)V
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    iget v1, p0, Landroid/text/AutoText;->mSize:I

    .line 6
    .line 7
    const/4 v2, 0x1

    .line 8
    add-int/2addr v1, v2

    .line 9
    iput v1, p0, Landroid/text/AutoText;->mSize:I

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    move v3, v1

    .line 13
    move v4, v3

    .line 14
    :goto_0
    if-ge v3, v0, :cond_5

    .line 15
    .line 16
    invoke-virtual {p1, v3}, Ljava/lang/String;->charAt(I)C

    .line 17
    .line 18
    .line 19
    move-result v5

    .line 20
    :goto_1
    iget-object v6, p0, Landroid/text/AutoText;->mTrie:[C

    .line 21
    .line 22
    aget-char v7, v6, v4

    .line 23
    .line 24
    const v8, 0xffff

    .line 25
    .line 26
    .line 27
    if-eq v7, v8, :cond_2

    .line 28
    .line 29
    add-int/lit8 v4, v7, 0x0

    .line 30
    .line 31
    aget-char v4, v6, v4

    .line 32
    .line 33
    if-ne v5, v4, :cond_1

    .line 34
    .line 35
    add-int/lit8 v4, v0, -0x1

    .line 36
    .line 37
    if-ne v3, v4, :cond_0

    .line 38
    .line 39
    add-int/2addr v7, v2

    .line 40
    aput-char p2, v6, v7

    .line 41
    .line 42
    return-void

    .line 43
    :cond_0
    add-int/lit8 v4, v7, 0x2

    .line 44
    .line 45
    move v6, v2

    .line 46
    goto :goto_2

    .line 47
    :cond_1
    add-int/lit8 v4, v7, 0x3

    .line 48
    .line 49
    goto :goto_1

    .line 50
    :cond_2
    move v6, v1

    .line 51
    :goto_2
    if-nez v6, :cond_4

    .line 52
    .line 53
    invoke-direct {p0}, Landroid/text/AutoText;->newTrieNode()C

    .line 54
    .line 55
    .line 56
    move-result v6

    .line 57
    iget-object v7, p0, Landroid/text/AutoText;->mTrie:[C

    .line 58
    .line 59
    aput-char v6, v7, v4

    .line 60
    .line 61
    add-int/2addr v6, v1

    .line 62
    aput-char v5, v7, v6

    .line 63
    .line 64
    aget-char v5, v7, v4

    .line 65
    .line 66
    add-int/2addr v5, v2

    .line 67
    aput-char v8, v7, v5

    .line 68
    .line 69
    aget-char v5, v7, v4

    .line 70
    .line 71
    add-int/lit8 v5, v5, 0x3

    .line 72
    .line 73
    aput-char v8, v7, v5

    .line 74
    .line 75
    aget-char v5, v7, v4

    .line 76
    .line 77
    add-int/lit8 v5, v5, 0x2

    .line 78
    .line 79
    aput-char v8, v7, v5

    .line 80
    .line 81
    add-int/lit8 v5, v0, -0x1

    .line 82
    .line 83
    if-ne v3, v5, :cond_3

    .line 84
    .line 85
    aget-char p1, v7, v4

    .line 86
    .line 87
    add-int/2addr p1, v2

    .line 88
    aput-char p2, v7, p1

    .line 89
    .line 90
    return-void

    .line 91
    :cond_3
    aget-char v4, v7, v4

    .line 92
    .line 93
    add-int/lit8 v4, v4, 0x2

    .line 94
    .line 95
    :cond_4
    add-int/lit8 v3, v3, 0x1

    .line 96
    .line 97
    goto :goto_0

    .line 98
    :cond_5
    return-void
.end method

.method public static get(Ljava/lang/CharSequence;IILandroid/view/View;)Ljava/lang/String;
    .locals 0

    invoke-static {p3}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p3

    invoke-direct {p3, p0, p1, p2}, Landroid/text/AutoText;->lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static getInstance(Landroid/view/View;)Landroid/text/AutoText;
    .locals 4

    .line 1
    invoke-virtual {p0}, Landroid/view/View;->getContext()Landroid/content/Context;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    invoke-virtual {p0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    .line 14
    .line 15
    sget-object v1, Landroid/text/AutoText;->sLock:Ljava/lang/Object;

    .line 16
    .line 17
    monitor-enter v1

    .line 18
    :try_start_0
    sget-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 19
    .line 20
    iget-object v3, v2, Landroid/text/AutoText;->mLocale:Ljava/util/Locale;

    .line 21
    .line 22
    invoke-virtual {v0, v3}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    .line 23
    .line 24
    .line 25
    move-result v0

    .line 26
    if-nez v0, :cond_0

    .line 27
    .line 28
    new-instance v2, Landroid/text/AutoText;

    .line 29
    .line 30
    invoke-direct {v2, p0}, Landroid/text/AutoText;-><init>(Landroid/content/res/Resources;)V

    .line 31
    .line 32
    .line 33
    sput-object v2, Landroid/text/AutoText;->sInstance:Landroid/text/AutoText;

    .line 34
    .line 35
    :cond_0
    monitor-exit v1

    .line 36
    return-object v2

    .line 37
    :catchall_0
    move-exception p0

    .line 38
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    throw p0
.end method

.method private getSize()I
    .locals 1

    .line 2
    iget v0, p0, Landroid/text/AutoText;->mSize:I

    return v0
.end method

.method public static getSize(Landroid/view/View;)I
    .locals 0

    .line 1
    invoke-static {p0}, Landroid/text/AutoText;->getInstance(Landroid/view/View;)Landroid/text/AutoText;

    move-result-object p0

    invoke-direct {p0}, Landroid/text/AutoText;->getSize()I

    move-result p0

    return p0
.end method

.method private init(Landroid/content/res/Resources;)V
    .locals 8

    .line 1
    const v0, 0x1170002

    .line 2
    .line 3
    .line 4
    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    .line 5
    .line 6
    .line 7
    move-result-object v0

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const/16 v2, 0x2454

    .line 11
    .line 12
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 13
    .line 14
    .line 15
    const/16 v2, 0x3801

    .line 16
    .line 17
    new-array v2, v2, [C

    .line 18
    .line 19
    iput-object v2, p0, Landroid/text/AutoText;->mTrie:[C

    .line 20
    .line 21
    const v3, 0xffff

    .line 22
    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    aput-char v3, v2, v4

    .line 26
    .line 27
    const/4 v2, 0x1

    .line 28
    iput-char v2, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 29
    .line 30
    :try_start_0
    const-string/jumbo v2, "words"

    .line 31
    .line 32
    .line 33
    invoke-static {v0, v2}, Lcom/android/internal/util/XmlUtils;->beginDocument(Lorg/xmlpull/v1/XmlPullParser;Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    const-string v2, ""

    .line 37
    .line 38
    :cond_0
    :goto_0
    invoke-static {v0}, Lcom/android/internal/util/XmlUtils;->nextElement(Lorg/xmlpull/v1/XmlPullParser;)V

    .line 39
    .line 40
    .line 41
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    .line 42
    .line 43
    .line 44
    move-result-object v3

    .line 45
    if-eqz v3, :cond_3

    .line 46
    .line 47
    const-string/jumbo v5, "word"

    .line 48
    .line 49
    .line 50
    invoke-virtual {v3, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 51
    .line 52
    .line 53
    move-result v3

    .line 54
    if-nez v3, :cond_1

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    const-string/jumbo v3, "src"

    .line 58
    .line 59
    .line 60
    const/4 v5, 0x0

    .line 61
    invoke-interface {v0, v5, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 62
    .line 63
    .line 64
    move-result-object v3

    .line 65
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    .line 66
    .line 67
    .line 68
    move-result v5

    .line 69
    const/4 v6, 0x4

    .line 70
    if-ne v5, v6, :cond_0

    .line 71
    .line 72
    invoke-interface {v0}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    .line 73
    .line 74
    .line 75
    move-result-object v5

    .line 76
    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    if-eqz v6, :cond_2

    .line 81
    .line 82
    move v6, v4

    .line 83
    goto :goto_1

    .line 84
    :cond_2
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    .line 85
    .line 86
    .line 87
    move-result v6

    .line 88
    int-to-char v6, v6

    .line 89
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    .line 90
    .line 91
    .line 92
    move-result v7

    .line 93
    int-to-char v7, v7

    .line 94
    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 95
    .line 96
    .line 97
    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 98
    .line 99
    .line 100
    :goto_1
    invoke-direct {p0, v3, v6}, Landroid/text/AutoText;->add(Ljava/lang/String;C)V

    .line 101
    .line 102
    .line 103
    goto :goto_0

    .line 104
    :cond_3
    :goto_2
    invoke-virtual {p1}, Landroid/content/res/Resources;->flushLayoutCache()V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 105
    .line 106
    .line 107
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 108
    .line 109
    .line 110
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object p1

    .line 114
    iput-object p1, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 115
    .line 116
    return-void

    .line 117
    :catchall_0
    move-exception p1

    .line 118
    goto :goto_3

    .line 119
    :catch_0
    move-exception p1

    .line 120
    :try_start_1
    new-instance v1, Ljava/lang/RuntimeException;

    .line 121
    .line 122
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 123
    .line 124
    .line 125
    throw v1

    .line 126
    :catch_1
    move-exception p1

    .line 127
    new-instance v1, Ljava/lang/RuntimeException;

    .line 128
    .line 129
    invoke-direct {v1, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    .line 130
    .line 131
    .line 132
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 133
    :goto_3
    invoke-interface {v0}, Landroid/content/res/XmlResourceParser;->close()V

    .line 134
    .line 135
    .line 136
    throw p1
.end method

.method private lookup(Ljava/lang/CharSequence;II)Ljava/lang/String;
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    aget-char v0, v0, v1

    .line 5
    .line 6
    :goto_0
    const/4 v1, 0x0

    .line 7
    if-ge p2, p3, :cond_4

    .line 8
    .line 9
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 10
    .line 11
    .line 12
    move-result v2

    .line 13
    :goto_1
    const v3, 0xffff

    .line 14
    .line 15
    .line 16
    if-eq v0, v3, :cond_2

    .line 17
    .line 18
    iget-object v4, p0, Landroid/text/AutoText;->mTrie:[C

    .line 19
    .line 20
    add-int/lit8 v5, v0, 0x0

    .line 21
    .line 22
    aget-char v5, v4, v5

    .line 23
    .line 24
    if-ne v2, v5, :cond_1

    .line 25
    .line 26
    add-int/lit8 v2, p3, -0x1

    .line 27
    .line 28
    if-ne p2, v2, :cond_0

    .line 29
    .line 30
    add-int/lit8 v2, v0, 0x1

    .line 31
    .line 32
    aget-char v2, v4, v2

    .line 33
    .line 34
    if-eq v2, v3, :cond_0

    .line 35
    .line 36
    iget-object p1, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 37
    .line 38
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    .line 39
    .line 40
    .line 41
    move-result p1

    .line 42
    iget-object p2, p0, Landroid/text/AutoText;->mText:Ljava/lang/String;

    .line 43
    .line 44
    add-int/lit8 v2, v2, 0x1

    .line 45
    .line 46
    add-int/2addr p1, v2

    .line 47
    invoke-virtual {p2, v2, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 48
    .line 49
    .line 50
    move-result-object p1

    .line 51
    return-object p1

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x2

    .line 53
    .line 54
    aget-char v0, v4, v0

    .line 55
    .line 56
    goto :goto_2

    .line 57
    :cond_1
    add-int/lit8 v0, v0, 0x3

    .line 58
    .line 59
    aget-char v0, v4, v0

    .line 60
    .line 61
    goto :goto_1

    .line 62
    :cond_2
    :goto_2
    if-ne v0, v3, :cond_3

    .line 63
    .line 64
    return-object v1

    .line 65
    :cond_3
    add-int/lit8 p2, p2, 0x1

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_4
    return-object v1
.end method

.method private newTrieNode()C
    .locals 4

    .line 1
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 2
    .line 3
    add-int/lit8 v0, v0, 0x4

    .line 4
    .line 5
    iget-object v1, p0, Landroid/text/AutoText;->mTrie:[C

    .line 6
    .line 7
    array-length v2, v1

    .line 8
    if-le v0, v2, :cond_0

    .line 9
    .line 10
    array-length v0, v1

    .line 11
    add-int/lit16 v0, v0, 0x400

    .line 12
    .line 13
    new-array v0, v0, [C

    .line 14
    .line 15
    array-length v2, v1

    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy([CI[CII)V

    .line 18
    .line 19
    .line 20
    iput-object v0, p0, Landroid/text/AutoText;->mTrie:[C

    .line 21
    .line 22
    :cond_0
    iget-char v0, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 23
    .line 24
    add-int/lit8 v1, v0, 0x4

    .line 25
    .line 26
    int-to-char v1, v1

    .line 27
    iput-char v1, p0, Landroid/text/AutoText;->mTrieUsed:C

    .line 28
    .line 29
    return v0
.end method
