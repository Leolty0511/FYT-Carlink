.class public Landroid/content/UriMatcher;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final EXACT:I = 0x0

.field public static final NO_MATCH:I = -0x1

.field private static final NUMBER:I = 0x1

.field private static final TEXT:I = 0x2


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Landroid/content/UriMatcher;",
            ">;"
        }
    .end annotation
.end field

.field private mCode:I

.field private mText:Ljava/lang/String;

.field private mWhich:I


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 7
    iput v0, p0, Landroid/content/UriMatcher;->mCode:I

    .line 8
    iput v0, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 9
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 v0, 0x0

    .line 10
    iput-object v0, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Landroid/content/UriMatcher;->mCode:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Landroid/content/UriMatcher;->mWhich:I

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public addURI(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 11

    .line 1
    if-ltz p3, :cond_a

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    const/4 v1, 0x1

    .line 5
    if-eqz p2, :cond_1

    .line 6
    .line 7
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    .line 8
    .line 9
    .line 10
    move-result v2

    .line 11
    if-le v2, v1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    const/16 v3, 0x2f

    .line 18
    .line 19
    if-ne v2, v3, :cond_0

    .line 20
    .line 21
    invoke-virtual {p2, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    :cond_0
    const-string v2, "/"

    .line 26
    .line 27
    invoke-virtual {p2, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object p2

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    const/4 p2, 0x0

    .line 33
    :goto_0
    if-eqz p2, :cond_2

    .line 34
    .line 35
    array-length v2, p2

    .line 36
    goto :goto_1

    .line 37
    :cond_2
    move v2, v0

    .line 38
    :goto_1
    const/4 v3, -0x1

    .line 39
    move-object v4, p0

    .line 40
    :goto_2
    if-ge v3, v2, :cond_9

    .line 41
    .line 42
    if-gez v3, :cond_3

    .line 43
    .line 44
    move-object v5, p1

    .line 45
    goto :goto_3

    .line 46
    :cond_3
    aget-object v5, p2, v3

    .line 47
    .line 48
    :goto_3
    iget-object v6, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 49
    .line 50
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 51
    .line 52
    .line 53
    move-result v7

    .line 54
    move v8, v0

    .line 55
    :goto_4
    if-ge v8, v7, :cond_5

    .line 56
    .line 57
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 58
    .line 59
    .line 60
    move-result-object v9

    .line 61
    check-cast v9, Landroid/content/UriMatcher;

    .line 62
    .line 63
    iget-object v10, v9, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 64
    .line 65
    invoke-virtual {v5, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 66
    .line 67
    .line 68
    move-result v10

    .line 69
    if-eqz v10, :cond_4

    .line 70
    .line 71
    move-object v4, v9

    .line 72
    goto :goto_5

    .line 73
    :cond_4
    add-int/lit8 v8, v8, 0x1

    .line 74
    .line 75
    goto :goto_4

    .line 76
    :cond_5
    :goto_5
    if-ne v8, v7, :cond_8

    .line 77
    .line 78
    new-instance v6, Landroid/content/UriMatcher;

    .line 79
    .line 80
    invoke-direct {v6}, Landroid/content/UriMatcher;-><init>()V

    .line 81
    .line 82
    .line 83
    const-string v7, "#"

    .line 84
    .line 85
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 86
    .line 87
    .line 88
    move-result v7

    .line 89
    if-eqz v7, :cond_6

    .line 90
    .line 91
    iput v1, v6, Landroid/content/UriMatcher;->mWhich:I

    .line 92
    .line 93
    goto :goto_6

    .line 94
    :cond_6
    const-string v7, "*"

    .line 95
    .line 96
    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 97
    .line 98
    .line 99
    move-result v7

    .line 100
    if-eqz v7, :cond_7

    .line 101
    .line 102
    const/4 v7, 0x2

    .line 103
    iput v7, v6, Landroid/content/UriMatcher;->mWhich:I

    .line 104
    .line 105
    goto :goto_6

    .line 106
    :cond_7
    iput v0, v6, Landroid/content/UriMatcher;->mWhich:I

    .line 107
    .line 108
    :goto_6
    iput-object v5, v6, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 109
    .line 110
    iget-object v4, v4, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 111
    .line 112
    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 113
    .line 114
    .line 115
    move-object v4, v6

    .line 116
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 117
    .line 118
    goto :goto_2

    .line 119
    :cond_9
    iput p3, v4, Landroid/content/UriMatcher;->mCode:I

    .line 120
    .line 121
    return-void

    .line 122
    :cond_a
    new-instance p1, Ljava/lang/IllegalArgumentException;

    .line 123
    .line 124
    const-string p2, "code "

    .line 125
    .line 126
    const-string v0, " is invalid: it must be positive"

    .line 127
    .line 128
    invoke-static {p2, p3, v0}, Landroid/accessibilityservice/c;->e(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/String;

    .line 129
    .line 130
    .line 131
    move-result-object p2

    .line 132
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 133
    .line 134
    .line 135
    throw p1
.end method

.method public match(Landroid/net/Uri;)I
    .locals 16

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-nez v1, :cond_0

    .line 10
    .line 11
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 12
    .line 13
    .line 14
    move-result-object v2

    .line 15
    if-nez v2, :cond_0

    .line 16
    .line 17
    move-object/from16 v2, p0

    .line 18
    .line 19
    iget v0, v2, Landroid/content/UriMatcher;->mCode:I

    .line 20
    .line 21
    return v0

    .line 22
    :cond_0
    move-object/from16 v2, p0

    .line 23
    .line 24
    const/4 v3, -0x1

    .line 25
    move-object v5, v2

    .line 26
    move v4, v3

    .line 27
    :goto_0
    if-ge v4, v1, :cond_b

    .line 28
    .line 29
    if-gez v4, :cond_1

    .line 30
    .line 31
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getAuthority()Ljava/lang/String;

    .line 32
    .line 33
    .line 34
    move-result-object v6

    .line 35
    goto :goto_1

    .line 36
    :cond_1
    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 37
    .line 38
    .line 39
    move-result-object v6

    .line 40
    check-cast v6, Ljava/lang/String;

    .line 41
    .line 42
    :goto_1
    iget-object v7, v5, Landroid/content/UriMatcher;->mChildren:Ljava/util/ArrayList;

    .line 43
    .line 44
    if-nez v7, :cond_2

    .line 45
    .line 46
    goto :goto_6

    .line 47
    :cond_2
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    .line 48
    .line 49
    .line 50
    move-result v5

    .line 51
    const/4 v8, 0x0

    .line 52
    const/4 v9, 0x0

    .line 53
    move v10, v8

    .line 54
    :goto_2
    if-ge v10, v5, :cond_9

    .line 55
    .line 56
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 57
    .line 58
    .line 59
    move-result-object v11

    .line 60
    check-cast v11, Landroid/content/UriMatcher;

    .line 61
    .line 62
    iget v12, v11, Landroid/content/UriMatcher;->mWhich:I

    .line 63
    .line 64
    if-eqz v12, :cond_5

    .line 65
    .line 66
    const/4 v13, 0x1

    .line 67
    if-eq v12, v13, :cond_3

    .line 68
    .line 69
    const/4 v13, 0x2

    .line 70
    if-eq v12, v13, :cond_6

    .line 71
    .line 72
    goto :goto_4

    .line 73
    :cond_3
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    .line 74
    .line 75
    .line 76
    move-result v12

    .line 77
    move v13, v8

    .line 78
    :goto_3
    if-ge v13, v12, :cond_6

    .line 79
    .line 80
    invoke-virtual {v6, v13}, Ljava/lang/String;->charAt(I)C

    .line 81
    .line 82
    .line 83
    move-result v14

    .line 84
    const/16 v15, 0x30

    .line 85
    .line 86
    if-lt v14, v15, :cond_7

    .line 87
    .line 88
    const/16 v15, 0x39

    .line 89
    .line 90
    if-le v14, v15, :cond_4

    .line 91
    .line 92
    goto :goto_4

    .line 93
    :cond_4
    add-int/lit8 v13, v13, 0x1

    .line 94
    .line 95
    goto :goto_3

    .line 96
    :cond_5
    iget-object v12, v11, Landroid/content/UriMatcher;->mText:Ljava/lang/String;

    .line 97
    .line 98
    invoke-virtual {v12, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 99
    .line 100
    .line 101
    move-result v12

    .line 102
    if-eqz v12, :cond_7

    .line 103
    .line 104
    :cond_6
    move-object v9, v11

    .line 105
    :cond_7
    :goto_4
    if-eqz v9, :cond_8

    .line 106
    .line 107
    goto :goto_5

    .line 108
    :cond_8
    add-int/lit8 v10, v10, 0x1

    .line 109
    .line 110
    goto :goto_2

    .line 111
    :cond_9
    :goto_5
    move-object v5, v9

    .line 112
    if-nez v5, :cond_a

    .line 113
    .line 114
    return v3

    .line 115
    :cond_a
    add-int/lit8 v4, v4, 0x1

    .line 116
    .line 117
    goto :goto_0

    .line 118
    :cond_b
    :goto_6
    iget v0, v5, Landroid/content/UriMatcher;->mCode:I

    .line 119
    .line 120
    return v0
.end method
