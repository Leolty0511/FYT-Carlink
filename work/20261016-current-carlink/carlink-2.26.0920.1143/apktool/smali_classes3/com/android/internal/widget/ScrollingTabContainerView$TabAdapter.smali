.class Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/ScrollingTabContainerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "TabAdapter"
.end annotation


# instance fields
.field private mDropDownContext:Landroid/content/Context;

.field final synthetic this$0:Lcom/android/internal/widget/ScrollingTabContainerView;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {p0, p2}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->setDropDownViewContext(Landroid/content/Context;)V

    .line 7
    .line 8
    .line 9
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getDropDownView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 4
    .line 5
    iget-object p3, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->mDropDownContext:Landroid/content/Context;

    .line 6
    .line 7
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    check-cast p1, Landroid/app/ActionBar$Tab;

    .line 12
    .line 13
    const/4 v0, 0x1

    .line 14
    invoke-static {p2, p3, p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 15
    .line 16
    .line 17
    move-result-object p2

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    move-object p3, p2

    .line 20
    check-cast p3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 21
    .line 22
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p1

    .line 26
    check-cast p1, Landroid/app/ActionBar$Tab;

    .line 27
    .line 28
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    .line 29
    .line 30
    .line 31
    :goto_0
    return-object p2
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-static {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$100(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/widget/LinearLayout;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    invoke-virtual {p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->getTab()Landroid/app/ActionBar$Tab;

    move-result-object p1

    return-object p1
.end method

.method public getItemId(I)J
    .locals 2

    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 1

    .line 1
    if-nez p2, :cond_0

    .line 2
    .line 3
    iget-object p2, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->this$0:Lcom/android/internal/widget/ScrollingTabContainerView;

    .line 4
    .line 5
    invoke-static {p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$200(Lcom/android/internal/widget/ScrollingTabContainerView;)Landroid/content/Context;

    .line 6
    .line 7
    .line 8
    move-result-object p3

    .line 9
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object p1

    .line 13
    check-cast p1, Landroid/app/ActionBar$Tab;

    .line 14
    .line 15
    const/4 v0, 0x1

    .line 16
    invoke-static {p2, p3, p1, v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->access$300(Lcom/android/internal/widget/ScrollingTabContainerView;Landroid/content/Context;Landroid/app/ActionBar$Tab;Z)Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 17
    .line 18
    .line 19
    move-result-object p2

    .line 20
    goto :goto_0

    .line 21
    :cond_0
    move-object p3, p2

    .line 22
    check-cast p3, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;

    .line 23
    .line 24
    invoke-virtual {p0, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->getItem(I)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object p1

    .line 28
    check-cast p1, Landroid/app/ActionBar$Tab;

    .line 29
    .line 30
    invoke-virtual {p3, p1}, Lcom/android/internal/widget/ScrollingTabContainerView$TabView;->bindTab(Landroid/app/ActionBar$Tab;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    return-object p2
.end method

.method public setDropDownViewContext(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Lcom/android/internal/widget/ScrollingTabContainerView$TabAdapter;->mDropDownContext:Landroid/content/Context;

    return-void
.end method
