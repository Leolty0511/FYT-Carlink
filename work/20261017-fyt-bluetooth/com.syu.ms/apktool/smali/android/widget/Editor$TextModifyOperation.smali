.class public Landroid/widget/Editor$TextModifyOperation;
.super Landroid/content/UndoOperation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Editor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "TextModifyOperation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/content/UndoOperation<",
        "Landroid/widget/TextView;",
        ">;"
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$ClassLoaderCreator<",
            "Landroid/widget/Editor$TextModifyOperation;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public mOldText:Ljava/lang/CharSequence;

.field public mRangeEnd:I

.field public mRangeStart:I


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/widget/Editor$TextModifyOperation$1;

    invoke-direct {v0}, Landroid/widget/Editor$TextModifyOperation$1;-><init>()V

    sput-object v0, Landroid/widget/Editor$TextModifyOperation;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    return-void
.end method

.method public constructor <init>(Landroid/content/UndoOwner;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/content/UndoOperation;-><init>(Landroid/content/UndoOwner;)V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1, p2}, Landroid/content/UndoOperation;-><init>(Landroid/os/Parcel;Ljava/lang/ClassLoader;)V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p2

    iput p2, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 5
    sget-object p2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p2, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    iput-object p1, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    return-void
.end method

.method private swapText()V
    .locals 5

    .line 1
    invoke-virtual {p0}, Landroid/content/UndoOperation;->getOwnerData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {v0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    check-cast v0, Landroid/text/Editable;

    .line 3
    iget v1, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v2, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    if-lt v1, v2, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {v0, v1, v2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    .line 5
    :goto_0
    iget-object v2, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    if-nez v2, :cond_1

    .line 6
    iget v2, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-interface {v0, v2, v3}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 7
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iput v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    goto :goto_1

    .line 8
    :cond_1
    iget v3, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget v4, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-interface {v0, v3, v4, v2}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 9
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    iget-object v2, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    add-int/2addr v0, v2

    iput v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    .line 10
    :goto_1
    iput-object v1, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    return-void
.end method


# virtual methods
.method public commit()V
    .locals 0

    return-void
.end method

.method public redo()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$TextModifyOperation;->swapText()V

    return-void
.end method

.method public undo()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/widget/Editor$TextModifyOperation;->swapText()V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1

    .line 1
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeStart:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget v0, p0, Landroid/widget/Editor$TextModifyOperation;->mRangeEnd:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget-object v0, p0, Landroid/widget/Editor$TextModifyOperation;->mOldText:Ljava/lang/CharSequence;

    invoke-static {v0, p1, p2}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    return-void
.end method
