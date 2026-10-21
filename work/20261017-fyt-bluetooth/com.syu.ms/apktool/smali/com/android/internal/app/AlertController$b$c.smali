.class public Lcom/android/internal/app/AlertController$b$c;
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
.field public final synthetic a:Lcom/android/internal/app/AlertController;

.field public final synthetic b:Lcom/android/internal/app/AlertController$b;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/AlertController$b;Lcom/android/internal/app/AlertController;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/app/AlertController$b$c;->b:Lcom/android/internal/app/AlertController$b;

    iput-object p2, p0, Lcom/android/internal/app/AlertController$b$c;->a:Lcom/android/internal/app/AlertController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/app/AlertController$b$c;->b:Lcom/android/internal/app/AlertController$b;

    iget-object p1, p1, Lcom/android/internal/app/AlertController$b;->u:Landroid/content/DialogInterface$OnClickListener;

    iget-object p2, p0, Lcom/android/internal/app/AlertController$b$c;->a:Lcom/android/internal/app/AlertController;

    invoke-static {p2}, Lcom/android/internal/app/AlertController;->l(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p2

    invoke-interface {p1, p2, p3}, Landroid/content/DialogInterface$OnClickListener;->onClick(Landroid/content/DialogInterface;I)V

    .line 2
    iget-object p1, p0, Lcom/android/internal/app/AlertController$b$c;->b:Lcom/android/internal/app/AlertController$b;

    iget-boolean p1, p1, Lcom/android/internal/app/AlertController$b;->D:Z

    if-nez p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/android/internal/app/AlertController$b$c;->a:Lcom/android/internal/app/AlertController;

    invoke-static {p1}, Lcom/android/internal/app/AlertController;->l(Lcom/android/internal/app/AlertController;)Landroid/content/DialogInterface;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    :cond_0
    return-void
.end method
