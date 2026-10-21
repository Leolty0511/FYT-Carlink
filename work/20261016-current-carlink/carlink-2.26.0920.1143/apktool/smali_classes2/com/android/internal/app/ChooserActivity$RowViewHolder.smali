.class Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ChooserActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RowViewHolder"
.end annotation


# instance fields
.field final cells:[Landroid/view/View;

.field itemIndices:[I

.field measuredRowHeight:I

.field final row:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 5
    .line 6
    new-array p1, p2, [Landroid/view/View;

    .line 7
    .line 8
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->cells:[Landroid/view/View;

    .line 9
    .line 10
    new-array p1, p2, [I

    .line 11
    .line 12
    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public measure()V
    .locals 2

    .line 1
    const/4 v0, 0x0

    .line 2
    invoke-static {v0, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 3
    .line 4
    .line 5
    move-result v0

    .line 6
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 7
    .line 8
    invoke-virtual {v1, v0, v0}, Landroid/view/View;->measure(II)V

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->row:Landroid/view/ViewGroup;

    .line 12
    .line 13
    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    iput v0, p0, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->measuredRowHeight:I

    .line 18
    .line 19
    return-void
.end method
