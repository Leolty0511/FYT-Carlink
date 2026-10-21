.class public Lcom/android/internal/database/SortCursor;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# static fields
.field private static final TAG:Ljava/lang/String; = "SortCursor"


# instance fields
.field private final ROWCACHESIZE:I

.field private mCurRowNumCache:[[I

.field private mCursor:Landroid/database/Cursor;

.field private mCursorCache:[I

.field private mCursors:[Landroid/database/Cursor;

.field private mLastCacheHit:I

.field private mObserver:Landroid/database/DataSetObserver;

.field private mRowNumCache:[I

.field private mSortColumns:[I


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    .line 2
    .line 3
    .line 4
    const/16 v0, 0x40

    .line 5
    .line 6
    iput v0, p0, Lcom/android/internal/database/SortCursor;->ROWCACHESIZE:I

    .line 7
    .line 8
    new-array v1, v0, [I

    .line 9
    .line 10
    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 11
    .line 12
    new-array v1, v0, [I

    .line 13
    .line 14
    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 15
    .line 16
    const/4 v1, -0x1

    .line 17
    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 18
    .line 19
    new-instance v1, Lcom/android/internal/database/SortCursor$1;

    .line 20
    .line 21
    invoke-direct {v1, p0}, Lcom/android/internal/database/SortCursor$1;-><init>(Lcom/android/internal/database/SortCursor;)V

    .line 22
    .line 23
    .line 24
    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 25
    .line 26
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 27
    .line 28
    array-length p1, p1

    .line 29
    new-array v1, p1, [I

    .line 30
    .line 31
    iput-object v1, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 32
    .line 33
    const/4 v1, 0x0

    .line 34
    move v2, v1

    .line 35
    :goto_0
    if-ge v2, p1, :cond_1

    .line 36
    .line 37
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 38
    .line 39
    aget-object v3, v3, v2

    .line 40
    .line 41
    if-nez v3, :cond_0

    .line 42
    .line 43
    goto :goto_1

    .line 44
    :cond_0
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mObserver:Landroid/database/DataSetObserver;

    .line 45
    .line 46
    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 47
    .line 48
    .line 49
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 50
    .line 51
    aget-object v3, v3, v2

    .line 52
    .line 53
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 54
    .line 55
    .line 56
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 57
    .line 58
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 59
    .line 60
    aget-object v4, v4, v2

    .line 61
    .line 62
    invoke-interface {v4, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    .line 63
    .line 64
    .line 65
    move-result v4

    .line 66
    aput v4, v3, v2

    .line 67
    .line 68
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 69
    .line 70
    goto :goto_0

    .line 71
    :cond_1
    const/4 p2, 0x0

    .line 72
    iput-object p2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 73
    .line 74
    const-string p2, ""

    .line 75
    .line 76
    move v2, v1

    .line 77
    :goto_2
    if-ge v2, p1, :cond_5

    .line 78
    .line 79
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 80
    .line 81
    aget-object v3, v3, v2

    .line 82
    .line 83
    if-eqz v3, :cond_4

    .line 84
    .line 85
    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    .line 86
    .line 87
    .line 88
    move-result v3

    .line 89
    if-eqz v3, :cond_2

    .line 90
    .line 91
    goto :goto_3

    .line 92
    :cond_2
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 93
    .line 94
    aget-object v3, v3, v2

    .line 95
    .line 96
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 97
    .line 98
    aget v4, v4, v2

    .line 99
    .line 100
    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 101
    .line 102
    .line 103
    move-result-object v3

    .line 104
    iget-object v4, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 105
    .line 106
    if-eqz v4, :cond_3

    .line 107
    .line 108
    invoke-virtual {v3, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 109
    .line 110
    .line 111
    move-result v4

    .line 112
    if-gez v4, :cond_4

    .line 113
    .line 114
    :cond_3
    iget-object p2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 115
    .line 116
    aget-object p2, p2, v2

    .line 117
    .line 118
    iput-object p2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 119
    .line 120
    move-object p2, v3

    .line 121
    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    iget-object p2, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 125
    .line 126
    array-length p2, p2

    .line 127
    const/4 v2, 0x1

    .line 128
    sub-int/2addr p2, v2

    .line 129
    :goto_4
    if-ltz p2, :cond_6

    .line 130
    .line 131
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 132
    .line 133
    const/4 v4, -0x2

    .line 134
    aput v4, v3, p2

    .line 135
    .line 136
    add-int/lit8 p2, p2, -0x1

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :cond_6
    const/4 p2, 0x2

    .line 140
    new-array p2, p2, [I

    .line 141
    .line 142
    aput p1, p2, v2

    .line 143
    .line 144
    aput v0, p2, v1

    .line 145
    .line 146
    sget-object p1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 147
    .line 148
    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    .line 149
    .line 150
    .line 151
    move-result-object p1

    .line 152
    check-cast p1, [[I

    .line 153
    .line 154
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 155
    .line 156
    return-void
.end method

.method public static synthetic access$002(Lcom/android/internal/database/SortCursor;I)I
    .locals 0

    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method

.method public static synthetic access$102(Lcom/android/internal/database/SortCursor;I)I
    .locals 0

    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    .line 15
    .line 16
    .line 17
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    goto :goto_1

    .line 14
    :cond_0
    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    .line 15
    .line 16
    .line 17
    :goto_1
    add-int/lit8 v1, v1, 0x1

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    return-object v0

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 11
    .line 12
    array-length v0, v0

    .line 13
    const/4 v1, 0x0

    .line 14
    :goto_0
    if-ge v1, v0, :cond_2

    .line 15
    .line 16
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 17
    .line 18
    aget-object v2, v2, v1

    .line 19
    .line 20
    if-eqz v2, :cond_1

    .line 21
    .line 22
    invoke-interface {v2}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    .line 23
    .line 24
    .line 25
    move-result-object v0

    .line 26
    return-object v0

    .line 27
    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    .line 31
    .line 32
    const-string v1, "No cursor that can return names"

    .line 33
    .line 34
    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    throw v0
.end method

.method public getCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v1, v0, :cond_1

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 9
    .line 10
    aget-object v3, v3, v1

    .line 11
    .line 12
    if-eqz v3, :cond_0

    .line 13
    .line 14
    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    .line 15
    .line 16
    .line 17
    move-result v3

    .line 18
    add-int/2addr v3, v2

    .line 19
    move v2, v3

    .line 20
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    return v2
.end method

.method public getDouble(I)D
    .locals 2

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public isNull(I)Z
    .locals 1

    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 10

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p2, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    rem-int/lit8 v1, p2, 0x40

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 8
    .line 9
    aget v2, v2, v1

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-ne v2, p2, :cond_2

    .line 13
    .line 14
    iget-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 15
    .line 16
    aget p1, p1, v1

    .line 17
    .line 18
    iget-object p2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 19
    .line 20
    aget-object p2, p2, p1

    .line 21
    .line 22
    iput-object p2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 23
    .line 24
    if-nez p2, :cond_1

    .line 25
    .line 26
    const-string p1, "SortCursor"

    .line 27
    .line 28
    const-string p2, "onMove: cache results in a null cursor."

    .line 29
    .line 30
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    .line 32
    .line 33
    return v3

    .line 34
    :cond_1
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 35
    .line 36
    aget-object v2, v2, v1

    .line 37
    .line 38
    aget p1, v2, p1

    .line 39
    .line 40
    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 41
    .line 42
    .line 43
    iput v1, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 44
    .line 45
    return v0

    .line 46
    :cond_2
    const/4 v2, 0x0

    .line 47
    iput-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 48
    .line 49
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 50
    .line 51
    array-length v2, v2

    .line 52
    iget v4, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 53
    .line 54
    if-ltz v4, :cond_4

    .line 55
    .line 56
    move v4, v3

    .line 57
    :goto_0
    if-ge v4, v2, :cond_4

    .line 58
    .line 59
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 60
    .line 61
    aget-object v5, v5, v4

    .line 62
    .line 63
    if-nez v5, :cond_3

    .line 64
    .line 65
    goto :goto_1

    .line 66
    :cond_3
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 67
    .line 68
    iget v7, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 69
    .line 70
    aget-object v6, v6, v7

    .line 71
    .line 72
    aget v6, v6, v4

    .line 73
    .line 74
    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 75
    .line 76
    .line 77
    :goto_1
    add-int/lit8 v4, v4, 0x1

    .line 78
    .line 79
    goto :goto_0

    .line 80
    :cond_4
    const/4 v4, -0x1

    .line 81
    if-lt p2, p1, :cond_5

    .line 82
    .line 83
    if-ne p1, v4, :cond_8

    .line 84
    .line 85
    :cond_5
    move p1, v3

    .line 86
    :goto_2
    if-ge p1, v2, :cond_7

    .line 87
    .line 88
    iget-object v5, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 89
    .line 90
    aget-object v5, v5, p1

    .line 91
    .line 92
    if-nez v5, :cond_6

    .line 93
    .line 94
    goto :goto_3

    .line 95
    :cond_6
    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    .line 96
    .line 97
    .line 98
    :goto_3
    add-int/lit8 p1, p1, 0x1

    .line 99
    .line 100
    goto :goto_2

    .line 101
    :cond_7
    move p1, v3

    .line 102
    :cond_8
    if-gez p1, :cond_9

    .line 103
    .line 104
    move p1, v3

    .line 105
    :cond_9
    move v5, v4

    .line 106
    :goto_4
    if-gt p1, p2, :cond_10

    .line 107
    .line 108
    const-string v5, ""

    .line 109
    .line 110
    move v7, v3

    .line 111
    move-object v6, v5

    .line 112
    move v5, v4

    .line 113
    :goto_5
    if-ge v7, v2, :cond_d

    .line 114
    .line 115
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 116
    .line 117
    aget-object v8, v8, v7

    .line 118
    .line 119
    if-eqz v8, :cond_c

    .line 120
    .line 121
    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    .line 122
    .line 123
    .line 124
    move-result v8

    .line 125
    if-eqz v8, :cond_a

    .line 126
    .line 127
    goto :goto_6

    .line 128
    :cond_a
    iget-object v8, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 129
    .line 130
    aget-object v8, v8, v7

    .line 131
    .line 132
    iget-object v9, p0, Lcom/android/internal/database/SortCursor;->mSortColumns:[I

    .line 133
    .line 134
    aget v9, v9, v7

    .line 135
    .line 136
    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    .line 137
    .line 138
    .line 139
    move-result-object v8

    .line 140
    if-ltz v5, :cond_b

    .line 141
    .line 142
    invoke-virtual {v8, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    .line 143
    .line 144
    .line 145
    move-result v9

    .line 146
    if-gez v9, :cond_c

    .line 147
    .line 148
    :cond_b
    move v5, v7

    .line 149
    move-object v6, v8

    .line 150
    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    .line 151
    .line 152
    goto :goto_5

    .line 153
    :cond_d
    if-ne p1, p2, :cond_e

    .line 154
    .line 155
    goto :goto_7

    .line 156
    :cond_e
    iget-object v6, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 157
    .line 158
    aget-object v6, v6, v5

    .line 159
    .line 160
    if-eqz v6, :cond_f

    .line 161
    .line 162
    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    .line 163
    .line 164
    .line 165
    :cond_f
    add-int/lit8 p1, p1, 0x1

    .line 166
    .line 167
    goto :goto_4

    .line 168
    :cond_10
    :goto_7
    iget-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 169
    .line 170
    aget-object p1, p1, v5

    .line 171
    .line 172
    iput-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursor:Landroid/database/Cursor;

    .line 173
    .line 174
    iget-object p1, p0, Lcom/android/internal/database/SortCursor;->mRowNumCache:[I

    .line 175
    .line 176
    aput p2, p1, v1

    .line 177
    .line 178
    iget-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursorCache:[I

    .line 179
    .line 180
    aput v5, p1, v1

    .line 181
    .line 182
    :goto_8
    if-ge v3, v2, :cond_12

    .line 183
    .line 184
    iget-object p1, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 185
    .line 186
    aget-object p1, p1, v3

    .line 187
    .line 188
    if-eqz p1, :cond_11

    .line 189
    .line 190
    iget-object p2, p0, Lcom/android/internal/database/SortCursor;->mCurRowNumCache:[[I

    .line 191
    .line 192
    aget-object p2, p2, v1

    .line 193
    .line 194
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    .line 195
    .line 196
    .line 197
    move-result p1

    .line 198
    aput p1, p2, v3

    .line 199
    .line 200
    :cond_11
    add-int/lit8 v3, v3, 0x1

    .line 201
    .line 202
    goto :goto_8

    .line 203
    :cond_12
    iput v4, p0, Lcom/android/internal/database/SortCursor;->mLastCacheHit:I

    .line 204
    .line 205
    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    move v2, v1

    .line 6
    :goto_0
    if-ge v2, v0, :cond_2

    .line 7
    .line 8
    iget-object v3, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 9
    .line 10
    aget-object v3, v3, v2

    .line 11
    .line 12
    if-nez v3, :cond_0

    .line 13
    .line 14
    goto :goto_1

    .line 15
    :cond_0
    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    .line 16
    .line 17
    .line 18
    move-result v3

    .line 19
    if-nez v3, :cond_1

    .line 20
    .line 21
    return v1

    .line 22
    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    .line 23
    .line 24
    goto :goto_0

    .line 25
    :cond_2
    const/4 v0, 0x1

    .line 26
    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 2
    .line 3
    array-length v0, v0

    .line 4
    const/4 v1, 0x0

    .line 5
    :goto_0
    if-ge v1, v0, :cond_1

    .line 6
    .line 7
    iget-object v2, p0, Lcom/android/internal/database/SortCursor;->mCursors:[Landroid/database/Cursor;

    .line 8
    .line 9
    aget-object v2, v2, v1

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    add-int/lit8 v1, v1, 0x1

    .line 17
    .line 18
    goto :goto_0

    .line 19
    :cond_1
    return-void
.end method
