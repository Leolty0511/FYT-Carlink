.class public Lcom/lsec/core/frame/page/Page_ContentView;
.super Lcom/lsec/core/frame/page/MyPage;
.source "Page_ContentView.java"


# instance fields
.field myActivity:Lcom/lsec/core/frame/app/MyActivity;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyActivity;)V
    .locals 1
    .param p1, "page"    # Lcom/lsec/core/frame/ctrl/JPage;
    .param p2, "myActivity"    # Lcom/lsec/core/frame/app/MyActivity;

    .prologue
    .line 10
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/lsec/core/frame/page/MyPage;-><init>(Lcom/lsec/core/frame/ctrl/JPage;Lcom/lsec/core/frame/app/MyUi;)V

    .line 11
    iput-object p2, p0, Lcom/lsec/core/frame/page/Page_ContentView;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    .line 12
    return-void
.end method


# virtual methods
.method public onSizeChanged(IIII)V
    .locals 1
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 16
    iget-object v0, p0, Lcom/lsec/core/frame/page/Page_ContentView;->myActivity:Lcom/lsec/core/frame/app/MyActivity;

    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyActivity;->handleSizeChanged()V

    .line 17
    return-void
.end method
