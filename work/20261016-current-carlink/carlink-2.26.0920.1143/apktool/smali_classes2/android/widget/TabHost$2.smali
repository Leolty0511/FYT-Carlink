.class Landroid/widget/TabHost$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabWidget$OnTabSelectionChanged;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/TabHost;->setup()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;)V
    .locals 0

    iput-object p1, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTabSelectionChanged(IZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    .line 2
    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 4
    .line 5
    .line 6
    if-eqz p2, :cond_0

    .line 7
    .line 8
    iget-object p1, p0, Landroid/widget/TabHost$2;->this$0:Landroid/widget/TabHost;

    .line 9
    .line 10
    invoke-static {p1}, Landroid/widget/TabHost;->access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;

    .line 11
    .line 12
    .line 13
    move-result-object p1

    .line 14
    const/4 p2, 0x2

    .line 15
    invoke-virtual {p1, p2}, Landroid/view/View;->requestFocus(I)Z

    .line 16
    .line 17
    .line 18
    :cond_0
    return-void
.end method
