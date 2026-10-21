.class public Landroid/widget/Editor$UndoInputFilter;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/InputFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "UndoInputFilter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Editor$UndoInputFilter$MergeMode;
    }
.end annotation


# static fields
.field private static final MERGE_EDIT_MODE_FORCE_MERGE:I = 0x0

.field private static final MERGE_EDIT_MODE_NEVER_MERGE:I = 0x1

.field private static final MERGE_EDIT_MODE_NORMAL:I = 0x2


# instance fields
.field private final mEditor:Landroid/widget/Editor;

.field private mExpanding:Z

.field private mHasComposition:Z

.field private mIsUserEdit:Z

.field private mPreviousOperationWasInSameBatchEdit:Z


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 5
    .line 6
    return-void
.end method

.method private canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z
    .locals 3

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    iget-boolean v1, v0, Landroid/widget/Editor;->mAllowUndo:Z

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    if-nez v1, :cond_0

    .line 7
    .line 8
    return v2

    .line 9
    :cond_0
    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    invoke-virtual {v0}, Landroid/content/UndoManager;->isInUndo()Z

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    if-eqz v0, :cond_1

    .line 18
    .line 19
    return v2

    .line 20
    :cond_1
    invoke-static {p1, p2, p3}, Landroid/widget/Editor;->access$7500(Ljava/lang/CharSequence;II)Z

    .line 21
    .line 22
    .line 23
    move-result p1

    .line 24
    if-eqz p1, :cond_4

    .line 25
    .line 26
    invoke-static {p4, p5, p6}, Landroid/widget/Editor;->access$7500(Ljava/lang/CharSequence;II)Z

    .line 27
    .line 28
    .line 29
    move-result p1

    .line 30
    if-nez p1, :cond_2

    .line 31
    .line 32
    goto :goto_0

    .line 33
    :cond_2
    if-ne p2, p3, :cond_3

    .line 34
    .line 35
    if-ne p5, p6, :cond_3

    .line 36
    .line 37
    return v2

    .line 38
    :cond_3
    const/4 p1, 0x1

    .line 39
    return p1

    .line 40
    :cond_4
    :goto_0
    return v2
.end method

.method private getLastEdit()Landroid/widget/Editor$EditOperation;
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 8
    .line 9
    invoke-static {v1}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    const/4 v2, 0x1

    .line 14
    const-class v3, Landroid/widget/Editor$EditOperation;

    .line 15
    .line 16
    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    .line 17
    .line 18
    .line 19
    move-result-object v0

    .line 20
    check-cast v0, Landroid/widget/Editor$EditOperation;

    .line 21
    .line 22
    return-object v0
.end method

.method private handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V
    .locals 6

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->isInTextWatcher()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    if-nez v0, :cond_2

    .line 6
    .line 7
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 8
    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    goto :goto_0

    .line 12
    :cond_0
    if-eqz p7, :cond_1

    .line 13
    .line 14
    const/4 p7, 0x1

    .line 15
    goto :goto_1

    .line 16
    :cond_1
    const/4 p7, 0x2

    .line 17
    goto :goto_1

    .line 18
    :cond_2
    :goto_0
    const/4 p7, 0x0

    .line 19
    :goto_1
    invoke-static {p1, p2, p3}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v4

    .line 23
    invoke-static {p4, p5, p6}, Landroid/text/TextUtils;->substring(Ljava/lang/CharSequence;II)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    new-instance p1, Landroid/widget/Editor$EditOperation;

    .line 28
    .line 29
    iget-object v1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 30
    .line 31
    iget-boolean v5, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 32
    .line 33
    move-object v0, p1

    .line 34
    move v3, p5

    .line 35
    invoke-direct/range {v0 .. v5}, Landroid/widget/Editor$EditOperation;-><init>(Landroid/widget/Editor;Ljava/lang/String;ILjava/lang/String;Z)V

    .line 36
    .line 37
    .line 38
    iget-boolean p2, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 39
    .line 40
    if-eqz p2, :cond_3

    .line 41
    .line 42
    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->access$7100(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    .line 43
    .line 44
    .line 45
    move-result-object p2

    .line 46
    invoke-static {p1}, Landroid/widget/Editor$EditOperation;->access$7200(Landroid/widget/Editor$EditOperation;)Ljava/lang/String;

    .line 47
    .line 48
    .line 49
    move-result-object p3

    .line 50
    invoke-static {p2, p3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    .line 51
    .line 52
    .line 53
    move-result p2

    .line 54
    if-eqz p2, :cond_3

    .line 55
    .line 56
    return-void

    .line 57
    :cond_3
    invoke-direct {p0, p1, p7}, Landroid/widget/Editor$UndoInputFilter;->recordEdit(Landroid/widget/Editor$EditOperation;I)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method private static isComposition(Ljava/lang/CharSequence;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Landroid/text/Spannable;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    if-nez v0, :cond_0

    .line 5
    .line 6
    return v1

    .line 7
    :cond_0
    check-cast p0, Landroid/text/Spannable;

    .line 8
    .line 9
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanStart(Landroid/text/Spannable;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    invoke-static {p0}, Landroid/view/inputmethod/BaseInputConnection;->getComposingSpanEnd(Landroid/text/Spannable;)I

    .line 14
    .line 15
    .line 16
    move-result p0

    .line 17
    if-ge v0, p0, :cond_1

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    :cond_1
    return v1
.end method

.method private isInTextWatcher()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$800(Landroid/widget/Editor;)Landroid/widget/TextView;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    instance-of v1, v0, Landroid/text/SpannableStringBuilder;

    .line 12
    .line 13
    if-eqz v1, :cond_0

    .line 14
    .line 15
    check-cast v0, Landroid/text/SpannableStringBuilder;

    .line 16
    .line 17
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->getTextWatcherDepth()I

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-lez v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x1

    .line 24
    goto :goto_0

    .line 25
    :cond_0
    const/4 v0, 0x0

    .line 26
    :goto_0
    return v0
.end method

.method private recordEdit(Landroid/widget/Editor$EditOperation;I)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Edit text"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    const/4 v2, 0x0

    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 20
    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    if-nez p2, :cond_1

    .line 24
    .line 25
    invoke-virtual {v1, p1}, Landroid/widget/Editor$EditOperation;->forceMergeWith(Landroid/widget/Editor$EditOperation;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_1
    iget-boolean v3, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 30
    .line 31
    if-nez v3, :cond_2

    .line 32
    .line 33
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 34
    .line 35
    invoke-static {p2}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    .line 36
    .line 37
    .line 38
    move-result-object p2

    .line 39
    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 40
    .line 41
    .line 42
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 43
    .line 44
    .line 45
    goto :goto_0

    .line 46
    :cond_2
    const/4 v3, 0x2

    .line 47
    if-ne p2, v3, :cond_3

    .line 48
    .line 49
    invoke-static {v1, p1}, Landroid/widget/Editor$EditOperation;->access$7400(Landroid/widget/Editor$EditOperation;Landroid/widget/Editor$EditOperation;)Z

    .line 50
    .line 51
    .line 52
    move-result p2

    .line 53
    if-eqz p2, :cond_3

    .line 54
    .line 55
    goto :goto_0

    .line 56
    :cond_3
    iget-object p2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 57
    .line 58
    invoke-static {p2}, Landroid/widget/Editor;->access$7300(Landroid/widget/Editor;)Landroid/content/UndoOwner;

    .line 59
    .line 60
    .line 61
    move-result-object p2

    .line 62
    invoke-virtual {v0, p2}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 63
    .line 64
    .line 65
    invoke-virtual {v0, p1, v2}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 66
    .line 67
    .line 68
    :goto_0
    iget-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 69
    .line 70
    iput-boolean p1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 71
    .line 72
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 73
    .line 74
    .line 75
    return-void
.end method


# virtual methods
.method public beginBatchEdit()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    return-void
.end method

.method public endBatchEdit()V
    .locals 1

    .line 1
    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 3
    .line 4
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 5
    .line 6
    return-void
.end method

.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 10

    .line 1
    move-object v8, p0

    .line 2
    invoke-direct/range {p0 .. p6}, Landroid/widget/Editor$UndoInputFilter;->canUndoEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Z

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    const/4 v9, 0x0

    .line 7
    if-nez v0, :cond_0

    .line 8
    .line 9
    return-object v9

    .line 10
    :cond_0
    iget-boolean v0, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 11
    .line 12
    invoke-static {p1}, Landroid/widget/Editor$UndoInputFilter;->isComposition(Ljava/lang/CharSequence;)Z

    .line 13
    .line 14
    .line 15
    move-result v1

    .line 16
    iput-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 17
    .line 18
    iget-boolean v1, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 19
    .line 20
    sub-int v2, p3, p2

    .line 21
    .line 22
    sub-int v3, p6, p5

    .line 23
    .line 24
    const/4 v4, 0x0

    .line 25
    if-eq v2, v3, :cond_2

    .line 26
    .line 27
    const/4 v5, 0x1

    .line 28
    if-le v2, v3, :cond_1

    .line 29
    .line 30
    move v2, v5

    .line 31
    goto :goto_0

    .line 32
    :cond_1
    move v2, v4

    .line 33
    :goto_0
    iput-boolean v2, v8, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 34
    .line 35
    if-eqz v0, :cond_2

    .line 36
    .line 37
    if-eq v2, v1, :cond_2

    .line 38
    .line 39
    move v7, v5

    .line 40
    goto :goto_1

    .line 41
    :cond_2
    move v7, v4

    .line 42
    :goto_1
    move-object v0, p0

    .line 43
    move-object v1, p1

    .line 44
    move v2, p2

    .line 45
    move v3, p3

    .line 46
    move-object v4, p4

    .line 47
    move v5, p5

    .line 48
    move/from16 v6, p6

    .line 49
    .line 50
    invoke-direct/range {v0 .. v7}, Landroid/widget/Editor$UndoInputFilter;->handleEdit(Ljava/lang/CharSequence;IILandroid/text/Spanned;IIZ)V

    .line 51
    .line 52
    .line 53
    return-object v9
.end method

.method public freezeLastEdit()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 2
    .line 3
    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    const-string v1, "Edit text"

    .line 8
    .line 9
    invoke-virtual {v0, v1}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 10
    .line 11
    .line 12
    invoke-direct {p0}, Landroid/widget/Editor$UndoInputFilter;->getLastEdit()Landroid/widget/Editor$EditOperation;

    .line 13
    .line 14
    .line 15
    move-result-object v0

    .line 16
    if-eqz v0, :cond_0

    .line 17
    .line 18
    const/4 v1, 0x1

    .line 19
    invoke-static {v0, v1}, Landroid/widget/Editor$EditOperation;->access$7002(Landroid/widget/Editor$EditOperation;Z)Z

    .line 20
    .line 21
    .line 22
    :cond_0
    iget-object v0, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    .line 23
    .line 24
    invoke-static {v0}, Landroid/widget/Editor;->access$6900(Landroid/widget/Editor;)Landroid/content/UndoManager;

    .line 25
    .line 26
    .line 27
    move-result-object v0

    .line 28
    invoke-virtual {v0}, Landroid/content/UndoManager;->endUpdate()V

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public restoreInstanceState(Landroid/os/Parcel;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    const/4 v2, 0x0

    .line 7
    if-eqz v0, :cond_0

    .line 8
    .line 9
    move v0, v1

    .line 10
    goto :goto_0

    .line 11
    :cond_0
    move v0, v2

    .line 12
    :goto_0
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 13
    .line 14
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    move v0, v1

    .line 21
    goto :goto_1

    .line 22
    :cond_1
    move v0, v2

    .line 23
    :goto_1
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 24
    .line 25
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 26
    .line 27
    .line 28
    move-result v0

    .line 29
    if-eqz v0, :cond_2

    .line 30
    .line 31
    move v0, v1

    .line 32
    goto :goto_2

    .line 33
    :cond_2
    move v0, v2

    .line 34
    :goto_2
    iput-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 37
    .line 38
    .line 39
    move-result p1

    .line 40
    if-eqz p1, :cond_3

    .line 41
    .line 42
    goto :goto_3

    .line 43
    :cond_3
    move v1, v2

    .line 44
    :goto_3
    iput-boolean v1, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 45
    .line 46
    return-void
.end method

.method public saveInstanceState(Landroid/os/Parcel;)V
    .locals 1

    .line 1
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mIsUserEdit:Z

    .line 2
    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mHasComposition:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mExpanding:Z

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget-boolean v0, p0, Landroid/widget/Editor$UndoInputFilter;->mPreviousOperationWasInSameBatchEdit:Z

    .line 17
    .line 18
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    return-void
.end method
