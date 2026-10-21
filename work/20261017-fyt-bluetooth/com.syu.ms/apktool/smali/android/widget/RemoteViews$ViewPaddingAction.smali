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


# static fields
.field public static final TAG:I = 0xe


# instance fields
.field public bottom:I

.field public left:I

.field public right:I

.field public final synthetic this$0:Landroid/widget/RemoteViews;

.field public top:I


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

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    iget p3, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    iget v0, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    iget v1, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {p1, p2, p3, v0, v1}, Landroid/view/View;->setPadding(IIII)V

    return-void
.end method

.method public getActionName()Ljava/lang/String;
    .locals 1

    const-string v0, "ViewPaddingAction"

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const/16 p2, 0xe

    .line 1
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2
    iget p2, p0, Landroid/widget/RemoteViews$Action;->viewId:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->left:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->top:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 5
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->right:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 6
    iget p2, p0, Landroid/widget/RemoteViews$ViewPaddingAction;->bottom:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
