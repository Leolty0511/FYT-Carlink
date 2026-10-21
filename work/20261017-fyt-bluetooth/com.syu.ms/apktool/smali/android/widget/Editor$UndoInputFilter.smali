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


# instance fields
.field public final mEditor:Landroid/widget/Editor;


# direct methods
.method public constructor <init>(Landroid/widget/Editor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    return-void
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 7

    .line 1
    iget-object p1, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object p1, p1, Landroid/widget/Editor;->mUndoManager:Landroid/content/UndoManager;

    .line 2
    invoke-virtual {p1}, Landroid/content/UndoManager;->isInUndo()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "Edit text"

    .line 3
    invoke-virtual {p1, v0}, Landroid/content/UndoManager;->beginUpdate(Ljava/lang/CharSequence;)V

    .line 4
    const-class v2, Landroid/widget/Editor$TextModifyOperation;

    iget-object v3, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v3, v3, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    const/4 v4, 0x1

    invoke-virtual {p1, v2, v3, v4}, Landroid/content/UndoManager;->getLastOperation(Ljava/lang/Class;Landroid/content/UndoOwner;I)Landroid/content/UndoOperation;

    move-result-object v2

    check-cast v2, Landroid/widget/Editor$TextModifyOperation;

    const/4 v3, 0x0

    if-eqz v2, :cond_6

    .line 5
    iget-object v5, v2, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v5, :cond_3

    if-ge p2, p3, :cond_5

    .line 6
    iget v4, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    if-lt p5, v4, :cond_1

    iget v4, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-le p6, v4, :cond_2

    :cond_1
    iget v4, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-ne p5, v4, :cond_5

    if-ne p6, v4, :cond_5

    :cond_2
    sub-int/2addr p3, p2

    add-int/2addr p5, p3

    .line 7
    iput p5, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 8
    invoke-virtual {p1}, Landroid/content/UndoManager;->endUpdate()V

    return-object v1

    :cond_3
    if-ne p2, p3, :cond_5

    .line 9
    iget v6, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    sub-int/2addr v6, v4

    if-ne p6, v6, :cond_5

    .line 10
    instance-of p2, v5, Landroid/text/SpannableString;

    if-eqz p2, :cond_4

    .line 11
    check-cast v5, Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 12
    :cond_4
    new-instance v5, Landroid/text/SpannableStringBuilder;

    iget-object p2, v2, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-direct {v5, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    :goto_0
    invoke-virtual {v5, v3, p4, p5, p6}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;II)Landroid/text/SpannableStringBuilder;

    .line 14
    iput p5, v2, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 15
    iput-object v5, v2, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {p1}, Landroid/content/UndoManager;->endUpdate()V

    return-object v1

    .line 17
    :cond_5
    invoke-virtual {p1, v1}, Landroid/content/UndoManager;->commitState(Landroid/content/UndoOwner;)I

    .line 18
    invoke-virtual {p1, v0}, Landroid/content/UndoManager;->setUndoLabel(Ljava/lang/CharSequence;)V

    .line 19
    :cond_6
    new-instance v0, Landroid/widget/Editor$TextModifyOperation;

    iget-object v2, p0, Landroid/widget/Editor$UndoInputFilter;->mEditor:Landroid/widget/Editor;

    iget-object v2, v2, Landroid/widget/Editor;->mUndoOwner:Landroid/content/UndoOwner;

    invoke-direct {v0, v2}, Landroid/widget/Editor$TextModifyOperation;-><init>(Landroid/content/UndoOwner;)V

    .line 20
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    if-ge p2, p3, :cond_7

    sub-int/2addr p3, p2

    add-int/2addr p3, p5

    .line 21
    iput p3, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_1

    .line 22
    :cond_7
    iput p5, v0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    :goto_1
    if-ge p5, p6, :cond_8

    .line 23
    invoke-interface {p4, p5, p6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p2

    iput-object p2, v0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    .line 24
    :cond_8
    invoke-virtual {p1, v0, v3}, Landroid/content/UndoManager;->addOperation(Landroid/content/UndoOperation;I)V

    .line 25
    invoke-virtual {p1}, Landroid/content/UndoManager;->endUpdate()V

    return-object v1
.end method
