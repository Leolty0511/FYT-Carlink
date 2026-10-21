.class Landroid/widget/RemoteViews$ViewPaddingAction;
.super Landroid/widget/RemoteViews$Action;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/RemoteViews;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ViewPaddingAction"
.end annotation


# instance fields
.field bottom:I

.field left:I

.field right:I

.field final synthetic this$0:Landroid/widget/RemoteViews;

.field top:I


# direct methods
.method public constructor <init>(Landroid/widget/RemoteViews;IIIII)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 2
    iput p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 3
    iput p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 4
    iput p4, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 5
    iput p5, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 6
    iput p6, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    return-void
.end method

.method public constructor <init>(Landroid/widget/RemoteViews;Landroid/os/Parcel;)V
    .locals 0

    .line 7
    iput-object p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->this$0:Landroid/widget/RemoteViews;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Landroid/widget/RemoteViews$Action;-><init>(Landroid/widget/RemoteViews$1;)V

    .line 8
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 9
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 10
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 11
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 12
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    return-void
.end method


# virtual methods
.method public apply(Landroid/view/View;Landroid/view/ViewGroup;Landroid/widget/RemoteViews$OnClickHandler;)V
    .locals 2

    .line 1
    iget p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    .line 4
    .line 5
    .line 6
    move-result-object p1

    .line 7
    if-nez p1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 11
    .line 12
    iget p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 13
    .line 14
    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 15
    .line 16
    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 17
    .line 18
    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViewPaddingAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    .line 1
    const/16 p2, 0xe

    .line 2
    .line 3
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    .line 5
    .line 6
    iget p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    .line 7
    .line 8
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 9
    .line 10
    .line 11
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    .line 12
    .line 13
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 14
    .line 15
    .line 16
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    .line 17
    .line 18
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 19
    .line 20
    .line 21
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    .line 22
    .line 23
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 24
    .line 25
    .line 26
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    .line 27
    .line 28
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 29
    .line 30
    .line 31
    return-void
.end method
