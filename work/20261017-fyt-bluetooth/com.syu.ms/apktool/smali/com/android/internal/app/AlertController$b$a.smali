.class public Lcom/android/internal/app/AlertController$b$a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/app/AlertController$b;->b(Lcom/android/internal/app/AlertController;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/CharSequence;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/app/AlertController$RecycleListView;

.field public final synthetic b:Lcom/android/internal/app/AlertController$b;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AlertController$b;Landroid/content/Context;II[Ljava/lang/CharSequence;Lcom/android/internal/app/AlertController$RecycleListView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController$b$a;->b:Lcom/android/internal/app/AlertController$b;

    iput-object p6, p0, Lcom/android/internal/app/AlertController$b$a;->a:Lcom/android/internal/app/AlertController$RecycleListView;

    invoke-direct {p0, p2, p3, p4, p5}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;II[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/widget/ArrayAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 2
    iget-object p3, p0, Lcom/android/internal/app/AlertController$b$a;->b:Lcom/android/internal/app/AlertController$b;

    iget-object p3, p3, Lcom/android/internal/app/AlertController$b;->B:[Z

    if-eqz p3, :cond_0

    .line 3
    aget-boolean p3, p3, p1

    if-eqz p3, :cond_0

    .line 4
    iget-object p3, p0, Lcom/android/internal/app/AlertController$b$a;->a:Lcom/android/internal/app/AlertController$RecycleListView;

    const/4 v0, 0x1

    invoke-virtual {p3, p1, v0}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    :cond_0
    return-object p2
.end method
