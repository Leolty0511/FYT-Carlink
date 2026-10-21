.class Landroid/widget/CursorTreeAdapter$MyCursorHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/CursorTreeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MyCursorHelper"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;,
        Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;
    }
.end annotation


# instance fields
.field private mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

.field private mCursor:Landroid/database/Cursor;

.field private mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

.field private mDataValid:Z

.field private mRowIDColumn:I

.field final synthetic this$0:Landroid/widget/CursorTreeAdapter;


# direct methods
.method public constructor <init>(Landroid/widget/CursorTreeAdapter;Landroid/database/Cursor;)V
    .locals 2

    .line 1
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    const/4 p1, 0x1

    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const/4 p1, 0x0

    .line 11
    :goto_0
    iput-object p2, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 12
    .line 13
    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 14
    .line 15
    if-eqz p1, :cond_1

    .line 16
    .line 17
    const-string v0, "_id"

    .line 18
    .line 19
    invoke-interface {p2, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 20
    .line 21
    .line 22
    move-result v0

    .line 23
    goto :goto_1

    .line 24
    :cond_1
    const/4 v0, -0x1

    .line 25
    :goto_1
    iput v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 26
    .line 27
    new-instance v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 28
    .line 29
    invoke-direct {v0, p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)V

    .line 30
    .line 31
    .line 32
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 33
    .line 34
    new-instance v0, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 35
    .line 36
    const/4 v1, 0x0

    .line 37
    invoke-direct {v0, p0, v1}, Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;-><init>(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Landroid/widget/CursorTreeAdapter$1;)V

    .line 38
    .line 39
    .line 40
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 41
    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 45
    .line 46
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 47
    .line 48
    .line 49
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 50
    .line 51
    invoke-interface {p2, p1}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 52
    .line 53
    .line 54
    :cond_2
    return-void
.end method

.method public static synthetic access$300(Landroid/widget/CursorTreeAdapter$MyCursorHelper;)Landroid/database/Cursor;
    .locals 0

    iget-object p0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object p0
.end method

.method public static synthetic access$402(Landroid/widget/CursorTreeAdapter$MyCursorHelper;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    return p1
.end method


# virtual methods
.method public changeCursor(Landroid/database/Cursor;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 2
    .line 3
    if-ne p1, v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    invoke-virtual {p0}, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->deactivate()V

    .line 7
    .line 8
    .line 9
    iput-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 10
    .line 11
    if-eqz p1, :cond_1

    .line 12
    .line 13
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 14
    .line 15
    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerContentObserver(Landroid/database/ContentObserver;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 19
    .line 20
    invoke-interface {p1, v0}, Landroid/database/Cursor;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 21
    .line 22
    .line 23
    const-string v0, "_id"

    .line 24
    .line 25
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    .line 26
    .line 27
    .line 28
    move-result p1

    .line 29
    iput p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 30
    .line 31
    const/4 p1, 0x1

    .line 32
    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 33
    .line 34
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 35
    .line 36
    invoke-virtual {p1, p2}, Landroid/widget/CursorTreeAdapter;->notifyDataSetChanged(Z)V

    .line 37
    .line 38
    .line 39
    goto :goto_0

    .line 40
    :cond_1
    const/4 p1, -0x1

    .line 41
    iput p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 42
    .line 43
    const/4 p1, 0x0

    .line 44
    iput-boolean p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 45
    .line 46
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->this$0:Landroid/widget/CursorTreeAdapter;

    .line 47
    .line 48
    invoke-virtual {p1}, Landroid/widget/CursorTreeAdapter;->notifyDataSetInvalidated()V

    .line 49
    .line 50
    .line 51
    :goto_0
    return-void
.end method

.method public deactivate()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    return-void

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mContentObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyContentObserver;

    .line 7
    .line 8
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterContentObserver(Landroid/database/ContentObserver;)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 12
    .line 13
    iget-object v1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataSetObserver:Landroid/widget/CursorTreeAdapter$MyCursorHelper$MyDataSetObserver;

    .line 14
    .line 15
    invoke-interface {v0, v1}, Landroid/database/Cursor;->unregisterDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 16
    .line 17
    .line 18
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 19
    .line 20
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x0

    .line 24
    iput-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 25
    .line 26
    return-void
.end method

.method public getCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0}, Landroid/database/Cursor;->getCount()I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    return v0

    .line 14
    :cond_0
    const/4 v0, 0x0

    .line 15
    return v0
.end method

.method public getCursor()Landroid/database/Cursor;
    .locals 1

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    return-object v0
.end method

.method public getId(I)J
    .locals 3

    .line 1
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 2
    .line 3
    const-wide/16 v1, 0x0

    .line 4
    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 12
    .line 13
    .line 14
    move-result p1

    .line 15
    if-eqz p1, :cond_0

    .line 16
    .line 17
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 18
    .line 19
    iget v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mRowIDColumn:I

    .line 20
    .line 21
    invoke-interface {p1, v0}, Landroid/database/Cursor;->getLong(I)J

    .line 22
    .line 23
    .line 24
    move-result-wide v0

    .line 25
    return-wide v0

    .line 26
    :cond_0
    return-wide v1
.end method

.method public isValid()Z
    .locals 1

    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public moveTo(I)Landroid/database/Cursor;
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mDataValid:Z

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 6
    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    if-eqz p1, :cond_0

    .line 14
    .line 15
    iget-object p1, p0, Landroid/widget/CursorTreeAdapter$MyCursorHelper;->mCursor:Landroid/database/Cursor;

    .line 16
    .line 17
    return-object p1

    .line 18
    :cond_0
    const/4 p1, 0x0

    .line 19
    return-object p1
.end method
