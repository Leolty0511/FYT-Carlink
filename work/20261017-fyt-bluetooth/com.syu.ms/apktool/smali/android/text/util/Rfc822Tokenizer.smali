.class public Landroid/text/util/Rfc822Tokenizer;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/MultiAutoCompleteTextView$Tokenizer;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static crunch(Ljava/lang/StringBuilder;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    const/16 v3, 0x20

    if-ge v2, v0, :cond_3

    .line 2
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-nez v4, :cond_2

    if-eqz v2, :cond_1

    add-int/lit8 v4, v0, -0x1

    if-eq v2, v4, :cond_1

    add-int/lit8 v4, v2, -0x1

    .line 3
    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v4

    if-eqz v4, :cond_1

    add-int/lit8 v4, v2, 0x1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v5

    if-eq v5, v3, :cond_1

    invoke-virtual {p0, v4}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v3

    if-nez v3, :cond_0

    goto :goto_1

    :cond_0
    move v2, v4

    goto :goto_0

    .line 4
    :cond_1
    :goto_1
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    if-ge v1, v0, :cond_5

    .line 5
    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->charAt(I)C

    move-result v2

    if-nez v2, :cond_4

    .line 6
    invoke-virtual {p0, v1, v3}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

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

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_9

    .line 22
    :cond_11
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v7

    if-lez v7, :cond_12

    .line 23
    new-instance v7, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v6, v8, v9}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, v7}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 24
    :cond_12
    :goto_9
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 25
    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 26
    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    goto/16 :goto_0

    .line 27
    :cond_13
    invoke-static {v0}, Landroid/text/util/Rfc822Tokenizer;->crunch(Ljava/lang/StringBuilder;)V

    .line 28
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_14

    .line 29
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_a

    .line 30
    :cond_14
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result p0

    if-lez p0, :cond_15

    .line 31
    new-instance p0, Landroid/text/util/Rfc822Token;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v6, v0, v1}, Landroid/text/util/Rfc822Token;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {p1, p0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_15
    :goto_a
    return-void
.end method

.method public static tokenize(Ljava/lang/CharSequence;)[Landroid/text/util/Rfc822Token;
    .locals 1

    .line 32
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 33
    invoke-static {p0, v0}, Landroid/text/util/Rfc822Tokenizer;->tokenize(Ljava/lang/CharSequence;Ljava/util/Collection;)V

    .line 34
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

    move-result v0

    :cond_0
    :goto_0
    if-ge p2, v0, :cond_b

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x2c

    if-eq v1, v2, :cond_b

    const/16 v2, 0x3b

    if-ne v1, v2, :cond_1

    goto :goto_5

    :cond_1
    const/16 v2, 0x5c

    const/16 v3, 0x22

    if-ne v1, v3, :cond_4

    :cond_2
    add-int/lit8 p2, p2, 0x1

    :goto_1
    if-ge p2, v0, :cond_0

    .line 3
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    if-ne v1, v3, :cond_3

    goto :goto_4

    :cond_3
    if-ne v1, v2, :cond_2

    add-int/lit8 v1, p2, 0x1

    if-ge v1, v0, :cond_2

    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_4
    const/16 v3, 0x28

    if-ne v1, v3, :cond_8

    add-int/lit8 p2, p2, 0x1

    const/4 v1, 0x1

    :goto_2
    if-ge p2, v0, :cond_0

    if-lez v1, :cond_0

    .line 4
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v4

    const/16 v5, 0x29

    if-ne v4, v5, :cond_6

    add-int/lit8 v1, v1, -0x1

    :cond_5
    :goto_3
    add-int/lit8 p2, p2, 0x1

    goto :goto_2

    :cond_6
    if-ne v4, v3, :cond_7

    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    :cond_7
    if-ne v4, v2, :cond_5

    add-int/lit8 v4, p2, 0x1

    if-ge v4, v0, :cond_5

    add-int/lit8 p2, p2, 0x2

    goto :goto_2

    :cond_8
    const/16 v2, 0x3c

    if-ne v1, v2, :cond_a

    :cond_9
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v0, :cond_0

    .line 5
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    const/16 v2, 0x3e

    if-ne v1, v2, :cond_9

    :cond_a
    :goto_4
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_b
    :goto_5
    return p2
.end method

.method public findTokenStart(Ljava/lang/CharSequence;I)I
    .locals 4

    const/4 v0, 0x0

    :goto_0
    move v1, v0

    :cond_0
    if-ge v0, p2, :cond_2

    .line 1
    invoke-virtual {p0, p1, v0}, Landroid/text/util/Rfc822Tokenizer;->findTokenEnd(Ljava/lang/CharSequence;I)I

    move-result v0

    if-ge v0, p2, :cond_0

    :goto_1
    add-int/lit8 v0, v0, 0x1

    if-ge v0, p2, :cond_1

    .line 2
    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v2

    const/16 v3, 0x20

    if-ne v2, v3, :cond_1

    goto :goto_1

    :cond_1
    if-ge v0, p2, :cond_0

    goto :goto_0

    :cond_2
    return v1
.end method

.method public terminateToken(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, ", "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
