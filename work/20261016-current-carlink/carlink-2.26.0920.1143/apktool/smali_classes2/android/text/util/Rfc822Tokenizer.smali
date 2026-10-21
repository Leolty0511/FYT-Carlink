.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    move v2, v1

    .line 7
    :goto_0
    const/16 v3, 0x20

    .line 8
    .line 9
    if-ge v2, v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 12
    .line 13
    .line 14
    move-result v4

    .line 15
    if-nez v4, :cond_2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    add-int/lit8 v4, v0, -0x1

    .line 20
    .line 21
    if-eq v2, v4, :cond_1

    .line 22
    .line 23
    add-int/lit8 v4, v2, -0x1

    .line 24
    .line 25
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 26
    .line 27
    .line 28
    move-result v5

    .line 29
    if-eq v5, v3, :cond_1

    .line 30
    .line 31
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 32
    .line 33
    .line 34
    move-result v4

    .line 35
    if-eqz v4, :cond_1

    .line 36
    .line 37
    add-int/lit8 v4, v2, 0x1

    .line 38
    .line 39
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eq v5, v3, :cond_1

    .line 44
    .line 45
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 46
    .line 47
    .line 48
    move-result v3

    .line 49
    if-nez v3, :cond_0

    .line 50
    .line 51
    goto :goto_1

    .line 52
    :cond_0
    move v2, v4

    .line 53
    goto :goto_0

    .line 54
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 55
    .line 56
    .line 57
    add-int/lit8 v0, v0, -0x1

    .line 58
    .line 59
    goto :goto_0

    .line 60
    :cond_2
    add-int/lit8 v2, v2, 0x1

    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    if-nez v2, :cond_4

    .line 70
    .line 71
    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    .line 72
    .line 73
    .line 74
    :cond_4
    add-int/lit8 v1, v1, 0x1

    .line 75
    .line 76
    goto :goto_2

    .line 77
    :cond_5
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Ljava/util/Collection<",
            "Landroid/text/util/Rfc822Token;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v3

    const/4 v4, 0x0

    move v5, v4

    :cond_0
    :goto_0
    const/4 v6, 0x0

    if-ge v5, v3, :cond_13

    .line 5
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    const/16 v8, 0x2c

    const/16 v9, 0x20

    if-eq v7, v8, :cond_f

    const/16 v8, 0x3b

    if-ne v7, v8, :cond_1

    goto/16 :goto_8

    :cond_1
    const/16 v6, 0x5c

    const/16 v8, 0x22

    if-ne v7, v8, :cond_5

    :goto_1
    add-int/lit8 v5, v5, 0x1

    :goto_2
    if-ge v5, v3, :cond_0

    .line 6
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v8, :cond_2

    :goto_3
    goto/16 :goto_7

    :cond_2
    if-ne v7, v6, :cond_4

    add-int/lit8 v7, v5, 0x1

    if-ge v7, v3, :cond_3

    .line 7
    invoke-interface {p0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_3
    add-int/lit8 v5, v5, 0x2

    goto :goto_2

    .line 8
    :cond_4
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_5
    const/16 v8, 0x28

    if-ne v7, v8, :cond_b

    add-int/lit8 v5, v5, 0x1

    const/4 v7, 0x1

    move v9, v7

    :goto_4
    if-ge v5, v3, :cond_0

    if-lez v9, :cond_0

    .line 9
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    const/16 v11, 0x29

    if-ne v10, v11, :cond_7

    if-le v9, v7, :cond_6

    .line 10
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    add-int/lit8 v9, v9, -0x1

    goto :goto_5

    :cond_7
    if-ne v10, v8, :cond_8

    .line 11
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    add-int/lit8 v9, v9, 0x1

    :goto_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    :cond_8
    if-ne v10, v6, :cond_a

    add-int/lit8 v10, v5, 0x1

    if-ge v10, v3, :cond_9

    .line 12
    invoke-interface {p0, v10}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v10

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_9
    add-int/lit8 v5, v5, 0x2

    goto :goto_4

    .line 13
    :cond_a
    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_5

    :cond_b
    const/16 v6, 0x3c

    if-ne v7, v6, :cond_d

    :goto_6
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_0

    .line 14
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v6

    const/16 v7, 0x3e

    if-ne v6, v7, :cond_c

    goto :goto_3

    .line 15
    :cond_c
    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_6

    :cond_d
    if-ne v7, v9, :cond_e

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_7

    .line 17
    :cond_e
    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_7
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_0

    :cond_f
    :goto_8
    add-int/lit8 v5, v5, 0x1

    if-ge v5, v3, :cond_10

    .line 18
    invoke-interface {p0, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v7

    if-ne v7, v9, :cond_10

    goto :goto_8

    .line 19
    :cond_10
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 20
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_11

    .line 21
    new-instance v6, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 22
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 23
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 25
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_12

    .line 26
    new-instance v7, Landroid/text/util/Rfc822Token;

    .line 27
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 30
    :cond_12
    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 31
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 32
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 33
    :cond_13
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 34
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_14

    .line 35
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 36
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 37
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 38
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 39
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_15

    .line 40
    new-instance p0, Landroid/text/util/Rfc822Token;

    .line 41
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 42
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_a
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 1

    .line 44
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 45
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 46
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p0

    new-array p0, p0, [Landroid/text/util/Rfc822Token;

    invoke-virtual {v0, p0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Landroid/text/util/Rfc822Token;

    return-object p0
.end method


# virtual methods
.method public findTokenEnd(Ljava/lang/CharSequence;I)I
    .locals 6

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    :cond_0
    :goto_0
    if-ge p2, v0, :cond_b

    .line 6
    .line 7
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    const/16 v2, 0x2c

    .line 12
    .line 13
    if-eq v1, v2, :cond_b

    .line 14
    .line 15
    const/16 v2, 0x3b

    .line 16
    .line 17
    if-ne v1, v2, :cond_1

    .line 18
    .line 19
    goto :goto_5

    .line 20
    :cond_1
    const/16 v2, 0x5c

    .line 21
    .line 22
    const/16 v3, 0x22

    .line 23
    .line 24
    if-ne v1, v3, :cond_4

    .line 25
    .line 26
    :cond_2
    add-int/lit8 p2, p2, 0x1

    .line 27
    .line 28
    :goto_1
    if-ge p2, v0, :cond_0

    .line 29
    .line 30
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    if-ne v1, v3, :cond_3

    .line 35
    .line 36
    goto :goto_4

    .line 37
    :cond_3
    if-ne v1, v2, :cond_2

    .line 38
    .line 39
    add-int/lit8 v1, p2, 0x1

    .line 40
    .line 41
    if-ge v1, v0, :cond_2

    .line 42
    .line 43
    add-int/lit8 p2, p2, 0x2

    .line 44
    .line 45
    goto :goto_1

    .line 46
    :cond_4
    const/16 v3, 0x28

    .line 47
    .line 48
    if-ne v1, v3, :cond_8

    .line 49
    .line 50
    add-int/lit8 p2, p2, 0x1

    .line 51
    .line 52
    const/4 v1, 0x1

    .line 53
    :goto_2
    if-ge p2, v0, :cond_0

    .line 54
    .line 55
    if-lez v1, :cond_0

    .line 56
    .line 57
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 58
    .line 59
    .line 60
    move-result v4

    .line 61
    const/16 v5, 0x29

    .line 62
    .line 63
    if-ne v4, v5, :cond_6

    .line 64
    .line 65
    add-int/lit8 v1, v1, -0x1

    .line 66
    .line 67
    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    .line 68
    .line 69
    goto :goto_2

    .line 70
    :cond_6
    if-ne v4, v3, :cond_7

    .line 71
    .line 72
    add-int/lit8 v1, v1, 0x1

    .line 73
    .line 74
    goto :goto_3

    .line 75
    :cond_7
    if-ne v4, v2, :cond_5

    .line 76
    .line 77
    add-int/lit8 v4, p2, 0x1

    .line 78
    .line 79
    if-ge v4, v0, :cond_5

    .line 80
    .line 81
    add-int/lit8 p2, p2, 0x2

    .line 82
    .line 83
    goto :goto_2

    .line 84
    :cond_8
    const/16 v2, 0x3c

    .line 85
    .line 86
    if-ne v1, v2, :cond_a

    .line 87
    .line 88
    :cond_9
    add-int/lit8 p2, p2, 0x1

    .line 89
    .line 90
    if-ge p2, v0, :cond_0

    .line 91
    .line 92
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    .line 93
    .line 94
    .line 95
    move-result v1

    .line 96
    const/16 v2, 0x3e

    .line 97
    .line 98
    if-ne v1, v2, :cond_9

    .line 99
    .line 100
    :cond_a
    :goto_4
    add-int/lit8 p2, p2, 0x1

    .line 101
    .line 102
    goto :goto_0

    .line 103
    :cond_b
    :goto_5
    return p2
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4

    .line 1
    const/4 v0, 0x0

    .line 2
    :goto_0
    move v1, v0

    .line 3
    :cond_0
    if-ge v0, p2, :cond_2

    .line 4
    .line 5
    invoke-virtual {p0, p1, v0}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-ge v0, p2, :cond_0

    .line 10
    .line 11
    :goto_1
    add-int/lit8 v0, v0, 0x1

    .line 12
    .line 13
    if-ge v0, p2, :cond_1

    .line 14
    .line 15
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    .line 16
    .line 17
    .line 18
    move-result v2

    .line 19
    const/16 v3, 0x20

    .line 20
    .line 21
    if-ne v2, v3, :cond_1

    .line 22
    .line 23
    goto :goto_1

    .line 24
    :cond_1
    if-ge v0, p2, :cond_0

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_2
    return v1
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
