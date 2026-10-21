.class public Landroid/app/assist/AssistStructure$WindowNode;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/assist/AssistStructure;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WindowNode"
.end annotation


# instance fields
.field final mDisplayId:I

.field final mHeight:I

.field final mRoot:Landroid/app/assist/AssistStructure$ViewNode;

.field final mTitle:Ljava/lang/CharSequence;

.field final mWidth:I

.field final mX:I

.field final mY:I


# direct methods
.method public constructor <init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;)V
    .locals 3

    .line 19
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x11111111

    const/4 v1, 0x0

    .line 20
    invoke-virtual {p1, v0, v1}, Landroid/app/assist/AssistStructure$ParcelTransferReader;->readParcel(II)Landroid/os/Parcel;

    move-result-object v0

    .line 21
    iget v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p1, Landroid/app/assist/AssistStructure$ParcelTransferReader;->mNumReadWindows:I

    .line 22
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 23
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 24
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 25
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 26
    sget-object v2, Landroid/text/TextUtils;->CHAR_SEQUENCE_CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v2, v0}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/CharSequence;

    iput-object v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 27
    invoke-virtual {v0}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 28
    new-instance v0, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v0, p1, v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>(Landroid/app/assist/AssistStructure$ParcelTransferReader;I)V

    iput-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-void
.end method

.method public constructor <init>(Landroid/app/assist/AssistStructure;Landroid/view/ViewRootImpl;ZI)V
    .locals 4

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getView()Landroid/view/View;

    move-result-object v0

    .line 3
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->getBoundsOnScreen(Landroid/graphics/Rect;)V

    .line 5
    iget v2, v1, Landroid/graphics/Rect;->left:I

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 6
    iget v2, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v3

    sub-int/2addr v2, v3

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 7
    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v2

    iput v2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 8
    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 9
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 10
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getDisplayId()I

    move-result v1

    iput v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 11
    new-instance v1, Landroid/app/assist/AssistStructure$ViewNode;

    invoke-direct {v1}, Landroid/app/assist/AssistStructure$ViewNode;-><init>()V

    iput-object v1, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    .line 12
    new-instance v2, Landroid/app/assist/AssistStructure$ViewNodeBuilder;

    const/4 v3, 0x0

    invoke-direct {v2, p1, v1, v3}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;-><init>(Landroid/app/assist/AssistStructure;Landroid/app/assist/AssistStructure$ViewNode;Z)V

    .line 13
    invoke-virtual {p2}, Landroid/view/ViewRootImpl;->getWindowFlags()I

    move-result p1

    and-int/lit16 p1, p1, 0x2000

    const/4 p2, 0x1

    if-eqz p1, :cond_2

    if-eqz p3, :cond_1

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_0

    move p1, p2

    goto :goto_0

    :cond_0
    move p1, v3

    .line 14
    :goto_0
    invoke-virtual {v0, v2, p1}, Landroid/view/View;->onProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->onProvideStructure(Landroid/view/ViewStructure;)V

    .line 16
    invoke-virtual {v2, p2}, Landroid/app/assist/AssistStructure$ViewNodeBuilder;->setAssistBlocked(Z)V

    return-void

    :cond_2
    :goto_1
    if-eqz p3, :cond_4

    and-int/lit8 p1, p4, 0x1

    if-eqz p1, :cond_3

    move v3, p2

    .line 17
    :cond_3
    invoke-virtual {v0, v2, v3}, Landroid/view/View;->dispatchProvideAutofillStructure(Landroid/view/ViewStructure;I)V

    goto :goto_2

    .line 18
    :cond_4
    invoke-virtual {v0, v2}, Landroid/view/View;->dispatchProvideStructure(Landroid/view/ViewStructure;)V

    :goto_2
    return-void
.end method


# virtual methods
.method public getDisplayId()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    return v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    return v0
.end method

.method public getLeft()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    return v0
.end method

.method public getRootViewNode()Landroid/app/assist/AssistStructure$ViewNode;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mRoot:Landroid/app/assist/AssistStructure$ViewNode;

    return-object v0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public getTop()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    return v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    return v0
.end method

.method public writeSelfToParcel(Landroid/os/Parcel;Landroid/os/PooledStringWriter;[F)V
    .locals 0

    .line 1
    iget p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mX:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mY:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mWidth:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mHeight:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget-object p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mTitle:Ljava/lang/CharSequence;

    .line 22
    .line 23
    const/4 p3, 0x0

    .line 24
    invoke-static {p2, p1, p3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 25
    .line 26
    .line 27
    iget p2, p0, Landroid/app/assist/AssistStructure$WindowNode;->mDisplayId:I

    .line 28
    .line 29
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
