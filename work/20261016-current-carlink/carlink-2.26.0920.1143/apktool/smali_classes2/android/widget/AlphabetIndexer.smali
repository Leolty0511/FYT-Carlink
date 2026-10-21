.class public Landroid/widget/AlphabetIndexer;
.super Landroid/database/DataSetObserver;
.source "SourceFile"

# interfaces
.implements Landroid/widget/SectionIndexer;


# instance fields
.field private mAlphaMap:Landroid/util/SparseIntArray;

.field protected mAlphabet:Ljava/lang/CharSequence;

.field private mAlphabetArray:[Ljava/lang/String;

.field private mAlphabetLength:I

.field private mCollator:Ljava/text/Collator;

.field protected mColumnIndex:I

.field protected mDataCursor:Landroid/database/Cursor;


# direct methods
.method public constructor <init>(Landroid/database/Cursor;ILjava/lang/CharSequence;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 5
    .line 6
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 7
    .line 8
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 9
    .line 10
    invoke-interface {p3}, Ljava/lang/CharSequence;->length()I

    .line 11
    .line 12
    .line 13
    move-result p2

    .line 14
    iput p2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 15
    .line 16
    new-array p2, p2, [Ljava/lang/String;

    .line 17
    .line 18
    iput-object p2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 19
    .line 20
    const/4 p2, 0x0

    .line 21
    move p3, p2

    .line 22
    :goto_0
    iget v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 23
    .line 24
    if-ge p3, v0, :cond_0

    .line 25
    .line 26
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    .line 27
    .line 28
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 29
    .line 30
    invoke-interface {v1, p3}, Ljava/lang/CharSequence;->charAt(I)C

    .line 31
    .line 32
    .line 33
    move-result v1

    .line 34
    invoke-static {v1}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 35
    .line 36
    .line 37
    move-result-object v1

    .line 38
    aput-object v1, v0, p3

    .line 39
    .line 40
    add-int/lit8 p3, p3, 0x1

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    new-instance p3, Landroid/util/SparseIntArray;

    .line 44
    .line 45
    invoke-direct {p3, v0}, Landroid/util/SparseIntArray;-><init>(I)V

    .line 46
    .line 47
    .line 48
    iput-object p3, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 49
    .line 50
    if-eqz p1, :cond_1

    .line 51
    .line 52
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 60
    .line 61
    invoke-virtual {p1, p2}, Ljava/text/Collator;->setStrength(I)V

    .line 62
    .line 63
    .line 64
    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string p1, " "

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 v0, 0x0

    .line 11
    const/4 v1, 0x1

    .line 12
    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p1

    .line 16
    :goto_0
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mCollator:Ljava/text/Collator;

    .line 17
    .line 18
    invoke-virtual {v0, p1, p2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    .line 20
    .line 21
    move-result p1

    .line 22
    return p1
.end method

.method public getPositionForSection(I)I
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 2
    .line 3
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-eqz v1, :cond_c

    .line 7
    .line 8
    iget-object v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 9
    .line 10
    if-nez v3, :cond_0

    .line 11
    .line 12
    goto/16 :goto_5

    .line 13
    .line 14
    :cond_0
    if-gtz p1, :cond_1

    .line 15
    .line 16
    return v2

    .line 17
    :cond_1
    iget v3, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 18
    .line 19
    if-lt p1, v3, :cond_2

    .line 20
    .line 21
    add-int/lit8 p1, v3, -0x1

    .line 22
    .line 23
    :cond_2
    invoke-interface {v1}, Landroid/database/Cursor;->getPosition()I

    .line 24
    .line 25
    .line 26
    move-result v3

    .line 27
    invoke-interface {v1}, Landroid/database/Cursor;->getCount()I

    .line 28
    .line 29
    .line 30
    move-result v4

    .line 31
    iget-object v5, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-interface {v5, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v5

    .line 37
    invoke-static {v5}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v6

    .line 41
    const/high16 v7, -0x80000000

    .line 42
    .line 43
    invoke-virtual {v0, v5, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 44
    .line 45
    .line 46
    move-result v8

    .line 47
    if-eq v7, v8, :cond_4

    .line 48
    .line 49
    if-gez v8, :cond_3

    .line 50
    .line 51
    neg-int v8, v8

    .line 52
    goto :goto_0

    .line 53
    :cond_3
    return v8

    .line 54
    :cond_4
    move v8, v4

    .line 55
    :goto_0
    if-lez p1, :cond_5

    .line 56
    .line 57
    iget-object v9, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 58
    .line 59
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    invoke-interface {v9, p1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 62
    .line 63
    .line 64
    move-result p1

    .line 65
    invoke-virtual {v0, p1, v7}, Landroid/util/SparseIntArray;->get(II)I

    .line 66
    .line 67
    .line 68
    move-result p1

    .line 69
    if-eq p1, v7, :cond_5

    .line 70
    .line 71
    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    .line 72
    .line 73
    .line 74
    move-result v2

    .line 75
    :cond_5
    add-int p1, v8, v2

    .line 76
    .line 77
    div-int/lit8 p1, p1, 0x2

    .line 78
    .line 79
    :goto_1
    if-ge p1, v8, :cond_b

    .line 80
    .line 81
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 82
    .line 83
    .line 84
    iget v7, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 85
    .line 86
    invoke-interface {v1, v7}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 87
    .line 88
    .line 89
    move-result-object v7

    .line 90
    if-nez v7, :cond_7

    .line 91
    .line 92
    if-nez p1, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    add-int/lit8 p1, p1, -0x1

    .line 96
    .line 97
    goto :goto_1

    .line 98
    :cond_7
    invoke-virtual {p0, v7, v6}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    .line 100
    .line 101
    move-result v7

    .line 102
    if-eqz v7, :cond_9

    .line 103
    .line 104
    if-gez v7, :cond_a

    .line 105
    .line 106
    add-int/lit8 p1, p1, 0x1

    .line 107
    .line 108
    if-lt p1, v4, :cond_8

    .line 109
    .line 110
    goto :goto_4

    .line 111
    :cond_8
    move v2, p1

    .line 112
    goto :goto_2

    .line 113
    :cond_9
    if-ne v2, p1, :cond_a

    .line 114
    .line 115
    goto :goto_3

    .line 116
    :cond_a
    move v8, p1

    .line 117
    :goto_2
    add-int p1, v2, v8

    .line 118
    .line 119
    div-int/lit8 p1, p1, 0x2

    .line 120
    .line 121
    goto :goto_1

    .line 122
    :cond_b
    :goto_3
    move v4, p1

    .line 123
    :goto_4
    invoke-virtual {v0, v5, v4}, Landroid/util/SparseIntArray;->put(II)V

    .line 124
    .line 125
    .line 126
    invoke-interface {v1, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 127
    .line 128
    .line 129
    return v4

    .line 130
    :cond_c
    :goto_5
    return v2
.end method

.method public getSectionForPosition(I)I
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 2
    .line 3
    invoke-interface {v0}, Landroid/database/Cursor;->getPosition()I

    .line 4
    .line 5
    .line 6
    move-result v0

    .line 7
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 8
    .line 9
    invoke-interface {v1, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    .line 11
    .line 12
    iget-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 13
    .line 14
    iget v1, p0, Landroid/widget/AlphabetIndexer;->mColumnIndex:I

    .line 15
    .line 16
    invoke-interface {p1, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    iget-object v1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 21
    .line 22
    invoke-interface {v1, v0}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 23
    .line 24
    .line 25
    const/4 v0, 0x0

    .line 26
    move v1, v0

    .line 27
    :goto_0
    iget v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabetLength:I

    .line 28
    .line 29
    if-ge v1, v2, :cond_1

    .line 30
    .line 31
    iget-object v2, p0, Landroid/widget/AlphabetIndexer;->mAlphabet:Ljava/lang/CharSequence;

    .line 32
    .line 33
    invoke-interface {v2, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 34
    .line 35
    .line 36
    move-result v2

    .line 37
    invoke-static {v2}, Ljava/lang/Character;->toString(C)Ljava/lang/String;

    .line 38
    .line 39
    .line 40
    move-result-object v2

    .line 41
    invoke-virtual {p0, p1, v2}, Landroid/widget/AlphabetIndexer;->compare(Ljava/lang/String;Ljava/lang/String;)I

    .line 42
    .line 43
    .line 44
    move-result v2

    .line 45
    if-nez v2, :cond_0

    .line 46
    .line 47
    return v1

    .line 48
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_1
    return v0
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphabetArray:[Ljava/lang/String;

    return-object v0
.end method

.method public onChanged()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public onInvalidated()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 5
    .line 6
    invoke-virtual {v0}, Landroid/util/SparseIntArray;->clear()V

    .line 7
    .line 8
    .line 9
    return-void
.end method

.method public setCursor(Landroid/database/Cursor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0, p0}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 6
    .line 7
    .line 8
    :cond_0
    iput-object p1, p0, Landroid/widget/AlphabetIndexer;->mDataCursor:Landroid/database/Cursor;

    .line 9
    .line 10
    if-eqz p1, :cond_1

    .line 11
    .line 12
    invoke-interface {p1, p0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 13
    .line 14
    .line 15
    :cond_1
    iget-object p1, p0, Landroid/widget/AlphabetIndexer;->mAlphaMap:Landroid/util/SparseIntArray;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/util/SparseIntArray;->clear()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
