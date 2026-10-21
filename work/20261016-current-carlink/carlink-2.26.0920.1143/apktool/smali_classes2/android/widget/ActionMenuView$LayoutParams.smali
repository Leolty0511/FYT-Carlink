.class public Landroid/widget/ActionMenuView$LayoutParams;
.super Landroid/widget/LinearLayout$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ActionMenuView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field public cellsUsed:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expandable:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public expanded:Z

.field public extraPixels:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public isOverflowButton:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field

.field public preventEdgeOffset:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "layout"
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    const/4 p1, 0x0

    .line 6
    iput-boolean p1, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(IIZ)V
    .locals 0

    .line 7
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 8
    iput-boolean p3, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method public constructor <init>(Landroid/widget/ActionMenuView$LayoutParams;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 4
    iget-boolean p1, p1, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    iput-boolean p1, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    return-void
.end method


# virtual methods
.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/widget/LinearLayout$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "layout:overFlowButton"

    .line 5
    .line 6
    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->isOverflowButton:Z

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 9
    .line 10
    .line 11
    const-string v0, "layout:cellsUsed"

    .line 12
    .line 13
    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->cellsUsed:I

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 16
    .line 17
    .line 18
    const-string v0, "layout:extraPixels"

    .line 19
    .line 20
    iget v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->extraPixels:I

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 23
    .line 24
    .line 25
    const-string v0, "layout:expandable"

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->expandable:Z

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    const-string v0, "layout:preventEdgeOffset"

    .line 33
    .line 34
    iget-boolean v1, p0, Landroid/widget/ActionMenuView$LayoutParams;->preventEdgeOffset:Z

    .line 35
    .line 36
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 37
    .line 38
    .line 39
    return-void
.end method
