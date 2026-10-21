.class Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->createViewHolder(Landroid/view/ViewGroup;)Lcom/android/internal/app/ChooserActivity$RowViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

.field final synthetic val$column:I

.field final synthetic val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;Lcom/android/internal/app/ChooserActivity$RowViewHolder;I)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    iput-object p2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    iput p3, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->this$1:Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;

    .line 2
    .line 3
    iget-object v0, p1, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->this$0:Lcom/android/internal/app/ChooserActivity;

    .line 4
    .line 5
    invoke-static {p1}, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;->access$800(Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter;)Lcom/android/internal/app/ChooserActivity$ChooserListAdapter;

    .line 6
    .line 7
    .line 8
    move-result-object p1

    .line 9
    iget-object v1, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$holder:Lcom/android/internal/app/ChooserActivity$RowViewHolder;

    .line 10
    .line 11
    iget-object v1, v1, Lcom/android/internal/app/ChooserActivity$RowViewHolder;->itemIndices:[I

    .line 12
    .line 13
    iget v2, p0, Lcom/android/internal/app/ChooserActivity$ChooserRowAdapter$3;->val$column:I

    .line 14
    .line 15
    aget v1, v1, v2

    .line 16
    .line 17
    const/4 v2, 0x1

    .line 18
    invoke-virtual {p1, v1, v2}, Lcom/android/internal/app/ResolverActivity$ResolveListAdapter;->resolveInfoForPosition(IZ)Landroid/content/pm/ResolveInfo;

    .line 19
    .line 20
    .line 21
    move-result-object p1

    .line 22
    invoke-virtual {v0, p1}, Lcom/android/internal/app/ChooserActivity;->showTargetDetails(Landroid/content/pm/ResolveInfo;)V

    .line 23
    .line 24
    .line 25
    return v2
.end method
