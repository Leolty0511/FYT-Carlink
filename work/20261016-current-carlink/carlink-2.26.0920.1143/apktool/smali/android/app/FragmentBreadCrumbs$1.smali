.class Landroid/app/FragmentBreadCrumbs$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/FragmentBreadCrumbs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/FragmentBreadCrumbs;


# direct methods
.method public constructor <init>(Landroid/app/FragmentBreadCrumbs;)V
    .locals 0

    iput-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    instance-of v0, v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 6
    .line 7
    if-eqz v0, :cond_4

    .line 8
    .line 9
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    check-cast v0, Landroid/app/FragmentManager$BackStackEntry;

    .line 14
    .line 15
    iget-object v1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    .line 16
    .line 17
    iget-object v2, v1, Landroid/app/FragmentBreadCrumbs;->mParentEntry:Landroid/app/BackStackRecord;

    .line 18
    .line 19
    if-ne v0, v2, :cond_0

    .line 20
    .line 21
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    .line 22
    .line 23
    .line 24
    move-result-object v0

    .line 25
    if-eqz v0, :cond_4

    .line 26
    .line 27
    iget-object v0, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    .line 28
    .line 29
    invoke-static {v0}, Landroid/app/FragmentBreadCrumbs;->access$000(Landroid/app/FragmentBreadCrumbs;)Landroid/view/View$OnClickListener;

    .line 30
    .line 31
    .line 32
    move-result-object v0

    .line 33
    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :cond_0
    invoke-static {v1}, Landroid/app/FragmentBreadCrumbs;->access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 38
    .line 39
    .line 40
    move-result-object p1

    .line 41
    const/4 v1, 0x0

    .line 42
    if-eqz p1, :cond_2

    .line 43
    .line 44
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    .line 45
    .line 46
    invoke-static {p1}, Landroid/app/FragmentBreadCrumbs;->access$100(Landroid/app/FragmentBreadCrumbs;)Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;

    .line 47
    .line 48
    .line 49
    move-result-object p1

    .line 50
    iget-object v2, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    .line 51
    .line 52
    iget-object v2, v2, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 53
    .line 54
    if-ne v0, v2, :cond_1

    .line 55
    .line 56
    const/4 v2, 0x0

    .line 57
    goto :goto_0

    .line 58
    :cond_1
    move-object v2, v0

    .line 59
    :goto_0
    invoke-interface {p1, v2, v1}, Landroid/app/FragmentBreadCrumbs$OnBreadCrumbClickListener;->onBreadCrumbClick(Landroid/app/FragmentManager$BackStackEntry;I)Z

    .line 60
    .line 61
    .line 62
    move-result p1

    .line 63
    if-eqz p1, :cond_2

    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    iget-object p1, p0, Landroid/app/FragmentBreadCrumbs$1;->this$0:Landroid/app/FragmentBreadCrumbs;

    .line 67
    .line 68
    iget-object v2, p1, Landroid/app/FragmentBreadCrumbs;->mTopEntry:Landroid/app/BackStackRecord;

    .line 69
    .line 70
    if-ne v0, v2, :cond_3

    .line 71
    .line 72
    iget-object p1, p1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 73
    .line 74
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 75
    .line 76
    .line 77
    move-result-object p1

    .line 78
    invoke-virtual {p1}, Landroid/app/FragmentManager;->popBackStack()V

    .line 79
    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_3
    iget-object p1, p1, Landroid/app/FragmentBreadCrumbs;->mActivity:Landroid/app/Activity;

    .line 83
    .line 84
    invoke-virtual {p1}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-interface {v0}, Landroid/app/FragmentManager$BackStackEntry;->getId()I

    .line 89
    .line 90
    .line 91
    move-result v0

    .line 92
    invoke-virtual {p1, v0, v1}, Landroid/app/FragmentManager;->popBackStack(II)V

    .line 93
    .line 94
    .line 95
    :cond_4
    :goto_1
    return-void
.end method
