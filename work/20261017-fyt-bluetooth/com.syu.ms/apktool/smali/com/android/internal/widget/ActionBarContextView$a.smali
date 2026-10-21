.class public Lcom/android/internal/widget/ActionBarContextView$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/widget/ActionBarContextView;->q(Landroid/view/ActionMode;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Landroid/view/ActionMode;

.field public final synthetic b:Lcom/android/internal/widget/ActionBarContextView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ActionBarContextView;Landroid/view/ActionMode;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$a;->b:Lcom/android/internal/widget/ActionBarContextView;

    iput-object p2, p0, Lcom/android/internal/widget/ActionBarContextView$a;->a:Landroid/view/ActionMode;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/android/internal/widget/ActionBarContextView$a;->a:Landroid/view/ActionMode;

    invoke-virtual {p1}, Landroid/view/ActionMode;->finish()V

    return-void
.end method
