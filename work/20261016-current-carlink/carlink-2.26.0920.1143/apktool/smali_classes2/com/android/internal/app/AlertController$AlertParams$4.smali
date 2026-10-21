.class Lcom/android/internal/app/AlertController$AlertParams$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$AlertParams;->createListView(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/AlertController$AlertParams;

.field final synthetic val$dialog:Lcom/android/internal/app/AlertController;

.field final synthetic val$listView:Lcom/android/internal/app/AlertController$RecycleListView;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AlertController$AlertParams;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    .line 2
    .line 3
    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mCheckedItems:[Z

    .line 4
    .line 5
    if-eqz p1, :cond_0

    .line 6
    .line 7
    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    .line 8
    .line 9
    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 10
    .line 11
    .line 12
    move-result p2

    .line 13
    aput-boolean p2, p1, p3

    .line 14
    .line 15
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->this$0:Lcom/android/internal/app/AlertController$AlertParams;

    .line 16
    .line 17
    iget-object p1, p1, Lcom/android/internal/app/AlertController$AlertParams;->mOnCheckboxClickListener:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    .line 18
    .line 19
    iget-object p2, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$dialog:Lcom/android/internal/app/AlertController;

    .line 20
    .line 21
    invoke-static {p2}, Lcom/android/internal/app/AlertController;->access$600(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    iget-object p4, p0, Lcom/android/internal/app/AlertController$AlertParams$4;->val$listView:Lcom/android/internal/app/AlertController$RecycleListView;

    .line 26
    .line 27
    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    .line 28
    .line 29
    .line 30
    move-result p4

    .line 31
    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    .line 32
    .line 33
    .line 34
    return-void
.end method
