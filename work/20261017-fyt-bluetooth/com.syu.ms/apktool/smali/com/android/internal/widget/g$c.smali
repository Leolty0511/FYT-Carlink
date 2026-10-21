.class public Lcom/android/internal/widget/g$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "c"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/widget/g;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/g$c;->a:Lcom/android/internal/widget/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/widget/g;Lcom/android/internal/widget/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/g$c;-><init>(Lcom/android/internal/widget/g;)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .line 1
    move-object v0, p1

    check-cast v0, Lcom/android/internal/widget/g$d;

    .line 2
    invoke-virtual {v0}, Lcom/android/internal/widget/g$d;->i()Landroid/app/ActionBar$Tab;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/ActionBar$Tab;->select()V

    .line 3
    iget-object v0, p0, Lcom/android/internal/widget/g$c;->a:Lcom/android/internal/widget/g;

    invoke-static {v0}, Lcom/android/internal/widget/g;->h(Lcom/android/internal/widget/g;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    .line 4
    iget-object v3, p0, Lcom/android/internal/widget/g$c;->a:Lcom/android/internal/widget/g;

    invoke-static {v3}, Lcom/android/internal/widget/g;->h(Lcom/android/internal/widget/g;)Landroid/widget/LinearLayout;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    if-ne v3, p1, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    move v4, v1

    .line 5
    :goto_1
    invoke-virtual {v3, v4}, Landroid/view/View;->setSelected(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method
