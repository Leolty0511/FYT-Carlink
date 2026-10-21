.class Lcom/syu/bt/page/Page_Set$5$1;
.super Ljava/lang/Object;
.source "Page_Set.java"

# interfaces
.implements Lcom/syu/bt/page/pop/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/page/Page_Set$5;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/syu/bt/page/Page_Set$5;


# direct methods
.method constructor <init>(Lcom/syu/bt/page/Page_Set$5;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/page/Page_Set$5$1;->this$1:Lcom/syu/bt/page/Page_Set$5;

    .line 1342
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public colorChanged(I)V
    .locals 7
    .param p1, "color"    # I

    .prologue
    .line 1346
    sput p1, Lcom/syu/bt/App_Bt;->color_set:I

    .line 1348
    invoke-static {}, Lcom/syu/bt/App_Bt;->getInstance()Lcom/syu/bt/App_Bt;

    move-result-object v4

    iget-object v4, v4, Lcom/syu/bt/App_Bt;->mySharePreference2:Lcom/lsec/core/util/MySharePreference2;

    .line 1349
    const-string v5, "colortype"

    sget v6, Lcom/syu/bt/App_Bt;->color_set:I

    invoke-virtual {v4, v5, v6}, Lcom/lsec/core/util/MySharePreference2;->saveIntValue(Ljava/lang/String;I)V

    .line 1350
    const-string v4, "gdy7"

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, " 11 Set_Btn_Color = "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    sget-object v4, Lcom/syu/bt/page/Page_Set;->actBt:Lcom/syu/bt/Act_Bt;

    iget-object v4, v4, Lcom/syu/bt/Act_Bt;->ui:Lcom/lsec/core/frame/app/MyUi;

    iget-object v4, v4, Lcom/lsec/core/frame/app/MyUi;->mPages:Landroid/util/SparseArray;

    .line 1353
    const/16 v5, 0x2712

    invoke-virtual {v4, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/lsec/core/frame/ctrl/JPage;

    .line 1355
    .local v3, "pageMenu":Lcom/lsec/core/frame/ctrl/JPage;
    const/16 v4, 0x28aa

    invoke-virtual {v3, v4}, Lcom/lsec/core/frame/ctrl/JPage;->getChildViewByid(I)Landroid/view/View;

    move-result-object v2

    .line 1354
    check-cast v2, Lcom/lsec/core/frame/ctrl/JView;

    .line 1357
    .local v2, "ivBgColor":Lcom/lsec/core/frame/ctrl/JView;
    if-eqz v2, :cond_0

    .line 1358
    const/4 v4, 0x2

    new-array v1, v4, [I

    const/4 v4, 0x0

    const v5, -0xefeff0

    aput v5, v1, v4

    const/4 v4, 0x1

    sget v5, Lcom/syu/bt/App_Bt;->color_set:I

    aput v5, v1, v4

    .line 1359
    .local v1, "colors":[I
    new-instance v0, Landroid/graphics/drawable/GradientDrawable;

    .line 1360
    sget-object v4, Landroid/graphics/drawable/GradientDrawable$Orientation;->TOP_BOTTOM:Landroid/graphics/drawable/GradientDrawable$Orientation;

    .line 1359
    invoke-direct {v0, v4, v1}, Landroid/graphics/drawable/GradientDrawable;-><init>(Landroid/graphics/drawable/GradientDrawable$Orientation;[I)V

    .line 1362
    .local v0, "bg":Landroid/graphics/drawable/GradientDrawable;
    const/high16 v4, 0x42c80000    # 100.0f

    invoke-virtual {v0, v4}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    .line 1363
    invoke-virtual {v2, v0}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 1366
    .end local v0    # "bg":Landroid/graphics/drawable/GradientDrawable;
    .end local v1    # "colors":[I
    :cond_0
    return-void
.end method
