.class Landroid/widget/TabHost$FactoryContentStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/TabHost$ContentStrategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "FactoryContentStrategy"
.end annotation


# instance fields
.field private mFactory:Landroid/widget/TabHost$TabContentFactory;

.field private mTabContent:Landroid/view/View;

.field private final mTag:Ljava/lang/CharSequence;

.field final synthetic this$0:Landroid/widget/TabHost;


# direct methods
.method public constructor <init>(Landroid/widget/TabHost;Ljava/lang/CharSequence;Landroid/widget/TabHost$TabContentFactory;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->this$0:Landroid/widget/TabHost;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    iput-object p2, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 7
    .line 8
    iput-object p3, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public getContentView()Landroid/view/View;
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mFactory:Landroid/widget/TabHost$TabContentFactory;

    .line 6
    .line 7
    iget-object v1, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTag:Ljava/lang/CharSequence;

    .line 8
    .line 9
    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    invoke-interface {v0, v1}, Landroid/widget/TabHost$TabContentFactory;->createTabContent(Ljava/lang/String;)Landroid/view/View;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    iput-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 18
    .line 19
    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 23
    .line 24
    .line 25
    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    .line 26
    .line 27
    return-object v0
.end method

.method public tabClosed()V
    .locals 2

    iget-object v0, p0, Landroid/widget/TabHost$FactoryContentStrategy;->mTabContent:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method
