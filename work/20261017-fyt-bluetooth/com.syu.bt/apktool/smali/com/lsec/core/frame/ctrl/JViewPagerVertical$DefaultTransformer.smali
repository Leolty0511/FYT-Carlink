.class public Lcom/lsec/core/frame/ctrl/JViewPagerVertical$DefaultTransformer;
.super Ljava/lang/Object;
.source "JViewPagerVertical.java"

# interfaces
.implements Landroid/support/v4/view/ViewPager$PageTransformer;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ctrl/JViewPagerVertical;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "DefaultTransformer"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/ctrl/JViewPagerVertical;


# direct methods
.method public constructor <init>(Lcom/lsec/core/frame/ctrl/JViewPagerVertical;)V
    .locals 0

    .prologue
    .line 9
    iput-object p1, p0, Lcom/lsec/core/frame/ctrl/JViewPagerVertical$DefaultTransformer;->this$0:Lcom/lsec/core/frame/ctrl/JViewPagerVertical;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public transformPage(Landroid/view/View;F)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # F

    .prologue
    .line 12
    neg-float v0, p2

    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 13
    invoke-virtual {p1}, Landroid/view/View;->getHeight()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p2

    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 14
    return-void
.end method
