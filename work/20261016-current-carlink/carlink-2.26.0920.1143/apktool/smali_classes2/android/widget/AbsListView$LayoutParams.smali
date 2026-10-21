.class public Landroid/widget/AbsListView$LayoutParams;
.super Landroid/view/ViewGroup$LayoutParams;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field forceAdd:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field isEnabled:Z

.field itemId:J

.field recycledHeaderFooter:Z
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
    .end annotation
.end field

.field scrappedFromPosition:I

.field viewType:I
    .annotation runtime Landroid/view/ViewDebug$ExportedProperty;
        category = "list"
        mapping = {
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x1
                to = "ITEM_VIEW_TYPE_IGNORE"
            .end subannotation,
            .subannotation Landroid/view/ViewDebug$IntToString;
                from = -0x2
                to = "ITEM_VIEW_TYPE_HEADER_OR_FOOTER"
            .end subannotation
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    return-void
.end method

.method public constructor <init>(III)V
    .locals 0

    .line 5
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    .line 7
    iput p3, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 2

    .line 8
    invoke-direct {p0, p1}, Landroid/view/ViewGroup$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    const-wide/16 v0, -0x1

    .line 9
    iput-wide v0, p0, Landroid/widget/AbsListView$LayoutParams;->itemId:J

    return-void
.end method


# virtual methods
.method public encodeProperties(Landroid/view/ViewHierarchyEncoder;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroid/view/ViewGroup$LayoutParams;->encodeProperties(Landroid/view/ViewHierarchyEncoder;)V

    .line 2
    .line 3
    .line 4
    const-string v0, "list:viewType"

    .line 5
    .line 6
    iget v1, p0, Landroid/widget/AbsListView$LayoutParams;->viewType:I

    .line 7
    .line 8
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;I)V

    .line 9
    .line 10
    .line 11
    const-string v0, "list:recycledHeaderFooter"

    .line 12
    .line 13
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->recycledHeaderFooter:Z

    .line 14
    .line 15
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const-string v0, "list:forceAdd"

    .line 19
    .line 20
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->forceAdd:Z

    .line 21
    .line 22
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 23
    .line 24
    .line 25
    const-string v0, "list:isEnabled"

    .line 26
    .line 27
    iget-boolean v1, p0, Landroid/widget/AbsListView$LayoutParams;->isEnabled:Z

    .line 28
    .line 29
    invoke-virtual {p1, v0, v1}, Landroid/view/ViewHierarchyEncoder;->addProperty(Ljava/lang/String;Z)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
