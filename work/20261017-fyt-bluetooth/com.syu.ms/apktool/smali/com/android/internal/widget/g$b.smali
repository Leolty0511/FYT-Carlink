.class public Lcom/android/internal/widget/g$b;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public final synthetic a:Lcom/android/internal/widget/g;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/g;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/g$b;->a:Lcom/android/internal/widget/g;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/android/internal/widget/g;Lcom/android/internal/widget/g$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/android/internal/widget/g$b;-><init>(Lcom/android/internal/widget/g;)V

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g$b;->a:Lcom/android/internal/widget/g;

    invoke-static {v0}, Lcom/android/internal/widget/g;->h(Lcom/android/internal/widget/g;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/android/internal/widget/g$b;->a:Lcom/android/internal/widget/g;

    invoke-static {v0}, Lcom/android/internal/widget/g;->h(Lcom/android/internal/widget/g;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/g$d;

    invoke-virtual {p1}, Lcom/android/internal/widget/g$d;->i()Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 0

    if-nez p2, :cond_0

    .line 1
    iget-object p2, p0, Lcom/android/internal/widget/g$b;->a:Lcom/android/internal/widget/g;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/g$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    const/4 p3, 0x1

    invoke-static {p2, p1, p3}, Lcom/android/internal/widget/g;->i(Lcom/android/internal/widget/g;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/g$d;

    move-result-object p2

    goto :goto_0

    .line 2
    :cond_0
    move-object p3, p2

    check-cast p3, Lcom/android/internal/widget/g$d;

    invoke-virtual {p0, p1}, Lcom/android/internal/widget/g$b;->getItem(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/ActionBar$Tab;

    invoke-virtual {p3, p1}, Lcom/android/internal/widget/g$d;->h(Landroid/app/ActionBar$Tab;)V

    :goto_0
    return-object p2
.end method
