.class public Lcom/android/internal/app/AlertController$b$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$b;->b(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/AlertController$RecycleListView;

.field public final synthetic b:Lcom/android/internal/app/AlertController;

.field public final synthetic c:Lcom/android/internal/app/AlertController$b;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AlertController$b;Lcom/android/internal/app/AlertController$RecycleListView;Lcom/android/internal/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController$b$d;->c:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$b$d;->a:Lcom/android/internal/app/AlertController$RecycleListView;

    iput-object p3, p0, Lcom/android/internal/app/AlertController$b$d;->b:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/AlertController$b$d;->c:Lcom/android/internal/app/AlertController$b;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$b;->B:[Z

    if-eqz p1, :cond_0

    .line 2
    iget-object p2, p0, Lcom/android/internal/app/AlertController$b$d;->a:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {p2, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p2

    aput-boolean p2, p1, p3

    .line 3
    :cond_0
    iget-object p1, p0, Lcom/android/internal/app/AlertController$b$d;->c:Lcom/android/internal/app/AlertController$b;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$b;->F:Landroid/content/DialogInterface$OnMultiChoiceClickListener;

    iget-object p2, p0, Lcom/android/internal/app/AlertController$b$d;->b:Lcom/android/internal/app/AlertController;

    invoke-static {p2}, Lcom/android/internal/app/AlertController;->l(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    iget-object p4, p0, Lcom/android/internal/app/AlertController$b$d;->a:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-virtual {p4, p3}, Landroid/widget/AbsListView;->isItemChecked(I)Z

    move-result p4

    invoke-interface {p1, p2, p3, p4}, Landroid/content/DialogInterface$OnMultiChoiceClickListener;->onClick(Landroid/content/DialogInterface;IZ)V

    return-void
.end method
