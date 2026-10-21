.class Lcom/myspec/MyClass$1;
.super Ljava/lang/Object;
.source "MyClass.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/myspec/MyClass;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/myspec/MyClass;


# direct methods
.method constructor <init>(Lcom/myspec/MyClass;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    .line 73
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, -0x1

    const/4 v6, 0x0

    .line 77
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-boolean v2, v2, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    if-eqz v2, :cond_0

    .line 101
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    new-instance v3, Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Lcom/myspec/MyClass;->v:Landroid/view/View;

    .line 82
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "zh"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 83
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v2, v2, Lcom/myspec/MyClass;->v:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "zh_tip"

    iget-object v5, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v5, v5, Lcom/myspec/MyClass;->mapDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 90
    :goto_1
    new-instance v0, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v0}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 91
    .local v0, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v2, 0x28

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 92
    const/16 v2, 0x7d2

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 93
    const/16 v2, 0x10

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 94
    iput v8, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 95
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 96
    iput v7, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 97
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iput-boolean v8, v2, Lcom/myspec/MyClass;->bPopPhoneTip:Z

    .line 99
    sget-object v2, Lcom/lsec/core/frame/app/MyApplication;->myApp:Lcom/lsec/core/frame/app/MyApplication;

    const-string v3, "window"

    invoke-virtual {v2, v3}, Lcom/lsec/core/frame/app/MyApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 100
    .local v1, "windowManager":Landroid/view/WindowManager;
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v2, v2, Lcom/myspec/MyClass;->v:Landroid/view/View;

    invoke-interface {v1, v2, v0}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 84
    .end local v0    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v1    # "windowManager":Landroid/view/WindowManager;
    :cond_1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Locale;->getLanguage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "ru"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v2, v2, Lcom/myspec/MyClass;->v:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "ru_tip"

    iget-object v5, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v5, v5, Lcom/myspec/MyClass;->mapDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 87
    :cond_2
    iget-object v2, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v2, v2, Lcom/myspec/MyClass;->v:Landroid/view/View;

    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v3

    iget-object v3, v3, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const-string v4, "en_tip"

    iget-object v5, p0, Lcom/myspec/MyClass$1;->this$0:Lcom/myspec/MyClass;

    iget-object v5, v5, Lcom/myspec/MyClass;->mapDrawables:Ljava/util/HashMap;

    invoke-virtual {v3, v4, v5, v6}, Lcom/lsec/core/frame/app/MyUi;->getDrawableFromPath(Ljava/lang/String;Ljava/util/HashMap;Ljava/util/HashMap;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method
