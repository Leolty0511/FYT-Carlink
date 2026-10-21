.class public Lm/a;
.super Landroid/database/AbstractCursor;
.source "SourceFile"


# instance fields
.field public a:Landroid/database/Cursor;

.field public b:[Landroid/database/Cursor;

.field public c:[I

.field public final d:I

.field public e:[I

.field public f:[I

.field public g:[[I

.field public h:I

.field public i:Landroid/database/DataSetObserver;


# direct methods
.method public constructor <init>([Landroid/database/Cursor;Ljava/lang/String;)V
    .locals 5

    .line 1
    invoke-direct {p0}, Landroid/database/AbstractCursor;-><init>()V

    const/16 v0, 0x40

    .line 2
    iput v0, p0, Lm/a;->d:I

    new-array v1, v0, [I

    .line 3
    iput-object v1, p0, Lm/a;->e:[I

    new-array v1, v0, [I

    .line 4
    iput-object v1, p0, Lm/a;->f:[I

    const/4 v1, -0x1

    .line 5
    iput v1, p0, Lm/a;->h:I

    .line 6
    new-instance v1, Lm/a$a;

    invoke-direct {v1, p0}, Lm/a$a;-><init>(Lm/a;)V

    iput-object v1, p0, Lm/a;->i:Landroid/database/DataSetObserver;

    .line 7
    iput-object p1, p0, Lm/a;->b:[Landroid/database/Cursor;

    .line 8
    array-length p1, p1

    .line 9
    new-array v1, p1, [I

    iput-object v1, p0, Lm/a;->c:[I

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, p1, :cond_1

    .line 10
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 11
    :cond_0
    aget-object v3, v3, v2

    iget-object v4, p0, Lm/a;->i:Landroid/database/DataSetObserver;

    invoke-interface {v3, v4}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 12
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    .line 13
    iget-object v3, p0, Lm/a;->c:[I

    iget-object v4, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v4, v4, v2

    invoke-interface {v4, p2}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v4

    aput v4, v3, v2

    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    .line 14
    iput-object p2, p0, Lm/a;->a:Landroid/database/Cursor;

    const-string p2, ""

    move v2, v1

    :goto_2
    if-ge v2, p1, :cond_5

    .line 15
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v4, v3, v2

    if-eqz v4, :cond_4

    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_3

    .line 16
    :cond_2
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v3, v2

    iget-object v4, p0, Lm/a;->c:[I

    aget v4, v4, v2

    invoke-interface {v3, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .line 17
    iget-object v4, p0, Lm/a;->a:Landroid/database/Cursor;

    if-eqz v4, :cond_3

    invoke-virtual {v3, p2}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v4

    if-gez v4, :cond_4

    .line 18
    :cond_3
    iget-object p2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object p2, p2, v2

    iput-object p2, p0, Lm/a;->a:Landroid/database/Cursor;

    move-object p2, v3

    :cond_4
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 19
    :cond_5
    iget-object p2, p0, Lm/a;->e:[I

    array-length p2, p2

    const/4 v2, 0x1

    sub-int/2addr p2, v2

    :goto_4
    if-ltz p2, :cond_6

    .line 20
    iget-object v3, p0, Lm/a;->e:[I

    const/4 v4, -0x2

    aput v4, v3, p2

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_6
    const/4 p2, 0x2

    new-array p2, p2, [I

    aput p1, p2, v2

    aput v0, p2, v1

    .line 21
    const-class p1, I

    invoke-static {p1, p2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [[I

    iput-object p1, p0, Lm/a;->g:[[I

    return-void
.end method

.method public static synthetic a(Lm/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method

.method public static synthetic b(Lm/a;I)I
    .locals 0

    .line 1
    iput p1, p0, Landroid/database/AbstractCursor;->mPos:I

    return p1
.end method


# virtual methods
.method public close()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public deactivate()V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v2, v1

    if-nez v3, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v2, v2, v1

    invoke-interface {v2}, Landroid/database/Cursor;->deactivate()V

    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public getBlob(I)[B
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object p1

    return-object p1
.end method

.method public getColumnNames()[Ljava/lang/String;
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_2

    .line 4
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v2, v1

    if-eqz v3, :cond_1

    .line 5
    aget-object v0, v2, v1

    invoke-interface {v0}, Landroid/database/Cursor;->getColumnNames()[Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 6
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "No cursor that can return names"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getCount()I
    .locals 5

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v4, v3, v1

    if-eqz v4, :cond_0

    .line 3
    aget-object v3, v3, v1

    invoke-interface {v3}, Landroid/database/Cursor;->getCount()I

    move-result v3

    add-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public getDouble(I)D
    .locals 2

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getDouble(I)D

    move-result-wide v0

    return-wide v0
.end method

.method public getFloat(I)F
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getFloat(I)F

    move-result p1

    return p1
.end method

.method public getInt(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getInt(I)I

    move-result p1

    return p1
.end method

.method public getLong(I)J
    .locals 2

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    return-wide v0
.end method

.method public getShort(I)S
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getShort(I)S

    move-result p1

    return p1
.end method

.method public getString(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getType(I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->getType(I)I

    move-result p1

    return p1
.end method

.method public isNull(I)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lm/a;->a:Landroid/database/Cursor;

    invoke-interface {v0, p1}, Landroid/database/Cursor;->isNull(I)Z

    move-result p1

    return p1
.end method

.method public onMove(II)Z
    .locals 10

    const/4 v0, 0x1

    if-ne p1, p2, :cond_0

    return v0

    .line 1
    :cond_0
    rem-int/lit8 v1, p2, 0x40

    .line 2
    iget-object v2, p0, Lm/a;->e:[I

    aget v2, v2, v1

    const/4 v3, 0x0

    if-ne v2, p2, :cond_2

    .line 3
    iget-object p1, p0, Lm/a;->f:[I

    aget p1, p1, v1

    .line 4
    iget-object p2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object p2, p2, p1

    iput-object p2, p0, Lm/a;->a:Landroid/database/Cursor;

    if-nez p2, :cond_1

    const-string p1, "SortCursor"

    const-string p2, "onMove: cache results in a null cursor."

    .line 5
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v3

    .line 6
    :cond_1
    iget-object v2, p0, Lm/a;->g:[[I

    aget-object v2, v2, v1

    aget p1, v2, p1

    invoke-interface {p2, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 7
    iput v1, p0, Lm/a;->h:I

    return v0

    :cond_2
    const/4 v2, 0x0

    .line 8
    iput-object v2, p0, Lm/a;->a:Landroid/database/Cursor;

    .line 9
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v2, v2

    .line 10
    iget v4, p0, Lm/a;->h:I

    if-ltz v4, :cond_4

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_4

    .line 11
    iget-object v5, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v6, v5, v4

    if-nez v6, :cond_3

    goto :goto_1

    .line 12
    :cond_3
    aget-object v5, v5, v4

    iget-object v6, p0, Lm/a;->g:[[I

    iget v7, p0, Lm/a;->h:I

    aget-object v6, v6, v7

    aget v6, v6, v4

    invoke-interface {v5, v6}, Landroid/database/Cursor;->moveToPosition(I)Z

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_4
    const/4 v4, -0x1

    if-lt p2, p1, :cond_5

    if-ne p1, v4, :cond_8

    :cond_5
    move p1, v3

    :goto_2
    if-ge p1, v2, :cond_7

    .line 13
    iget-object v5, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v6, v5, p1

    if-nez v6, :cond_6

    goto :goto_3

    .line 14
    :cond_6
    aget-object v5, v5, p1

    invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z

    :goto_3
    add-int/lit8 p1, p1, 0x1

    goto :goto_2

    :cond_7
    move p1, v3

    :cond_8
    if-gez p1, :cond_9

    move p1, v3

    :cond_9
    move v5, v4

    :goto_4
    if-gt p1, p2, :cond_10

    const-string v5, ""

    move v7, v3

    move-object v6, v5

    move v5, v4

    :goto_5
    if-ge v7, v2, :cond_d

    .line 15
    iget-object v8, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v9, v8, v7

    if-eqz v9, :cond_c

    aget-object v8, v8, v7

    invoke-interface {v8}, Landroid/database/Cursor;->isAfterLast()Z

    move-result v8

    if-eqz v8, :cond_a

    goto :goto_6

    .line 16
    :cond_a
    iget-object v8, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v8, v8, v7

    iget-object v9, p0, Lm/a;->c:[I

    aget v9, v9, v7

    invoke-interface {v8, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    if-ltz v5, :cond_b

    .line 17
    invoke-virtual {v8, v6}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v9

    if-gez v9, :cond_c

    :cond_b
    move v5, v7

    move-object v6, v8

    :cond_c
    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    :cond_d
    if-ne p1, p2, :cond_e

    goto :goto_7

    .line 18
    :cond_e
    iget-object v6, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v7, v6, v5

    if-eqz v7, :cond_f

    .line 19
    aget-object v6, v6, v5

    invoke-interface {v6}, Landroid/database/Cursor;->moveToNext()Z

    :cond_f
    add-int/lit8 p1, p1, 0x1

    goto :goto_4

    .line 20
    :cond_10
    :goto_7
    iget-object p1, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object p1, p1, v5

    iput-object p1, p0, Lm/a;->a:Landroid/database/Cursor;

    .line 21
    iget-object p1, p0, Lm/a;->e:[I

    aput p2, p1, v1

    .line 22
    iget-object p1, p0, Lm/a;->f:[I

    aput v5, p1, v1

    :goto_8
    if-ge v3, v2, :cond_12

    .line 23
    iget-object p1, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object p2, p1, v3

    if-eqz p2, :cond_11

    .line 24
    iget-object p2, p0, Lm/a;->g:[[I

    aget-object p2, p2, v1

    aget-object p1, p1, v3

    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I

    move-result p1

    aput p1, p2, v3

    :cond_11
    add-int/lit8 v3, v3, 0x1

    goto :goto_8

    .line 25
    :cond_12
    iput v4, p0, Lm/a;->h:I

    return v0
.end method

.method public registerDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public requery()Z
    .locals 5

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_2

    .line 2
    iget-object v3, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v4, v3, v2

    if-nez v4, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    aget-object v3, v3, v2

    invoke-interface {v3}, Landroid/database/Cursor;->requery()Z

    move-result v3

    if-nez v3, :cond_1

    return v1

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method public unregisterDataSetObserver(Landroid/database/DataSetObserver;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lm/a;->b:[Landroid/database/Cursor;

    array-length v0, v0

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    .line 2
    iget-object v2, p0, Lm/a;->b:[Landroid/database/Cursor;

    aget-object v3, v2, v1

    if-eqz v3, :cond_0

    .line 3
    aget-object v2, v2, v1

    invoke-interface {v2, p1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
