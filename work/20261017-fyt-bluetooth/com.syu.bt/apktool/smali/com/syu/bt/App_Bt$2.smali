.class Lcom/syu/bt/App_Bt$2;
.super Ljava/lang/Object;
.source "App_Bt.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/syu/bt/App_Bt;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/App_Bt;


# direct methods
.method constructor <init>(Lcom/syu/bt/App_Bt;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    .line 1128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .prologue
    const/4 v12, 0x2

    const/4 v10, 0x0

    const/4 v11, 0x1

    .line 1133
    iget-object v8, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    iget-boolean v8, v8, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    if-nez v8, :cond_3

    .line 1134
    iget-object v8, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    const/4 v9, 0x3

    invoke-virtual {v8, v11, v9}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v6

    .line 1135
    .local v6, "pageFunc":Lcom/lsec/core/frame/ctrl/JPage;
    iget-object v8, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    iget-object v8, v8, Lcom/syu/bt/App_Bt;->uiApp:Lcom/lsec/core/frame/app/MyUi;

    invoke-virtual {v8, v11, v12}, Lcom/lsec/core/frame/app/MyUi;->loadPage(ZI)Lcom/lsec/core/frame/ctrl/JPage;

    move-result-object v7

    .line 1136
    .local v7, "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    if-eqz v7, :cond_3

    if-eqz v6, :cond_3

    .line 1137
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->resume()V

    .line 1139
    invoke-virtual {v6}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1140
    .local v1, "itemFunc":Lcom/lsec/core/frame/app/MyUiItem;
    invoke-virtual {v7}, Lcom/lsec/core/frame/ctrl/JPage;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/lsec/core/frame/app/MyUiItem;

    .line 1142
    .local v0, "item":Lcom/lsec/core/frame/app/MyUiItem;
    new-instance v2, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v2}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    .line 1149
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    const/16 v8, 0x28

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 1150
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "SYU_DS"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1151
    const/16 v8, 0x7ea

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 1161
    :goto_0
    iput v11, v2, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 1162
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getWidth()I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 1163
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v8

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 1164
    const/4 v3, 0x0

    .line 1165
    .local v3, "offsetX":I
    const/4 v4, 0x0

    .line 1166
    .local v4, "offsetY":I
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_NEW"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_0

    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "AY_V"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1167
    :cond_0
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v8

    invoke-virtual {v8}, Lcom/syu/bt/util/BTUtil;->getWindowManeger()[I

    move-result-object v8

    aget v8, v8, v10

    const/16 v9, 0x7d0

    if-ne v8, v9, :cond_5

    .line 1168
    const/16 v4, 0x8

    .line 1174
    :cond_1
    :goto_1
    sget-object v8, Lcom/syu/bt/App_Bt;->mStrCustomer:Ljava/lang/String;

    const-string v9, "TZY_OEM"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1175
    const/16 v3, 0xa

    .line 1176
    const/16 v4, -0xf

    .line 1183
    :cond_2
    invoke-virtual {v0}, Lcom/lsec/core/frame/app/MyUiItem;->getPadding()[I

    move-result-object v5

    .line 1184
    .local v5, "padding":[I
    if-eqz v5, :cond_6

    array-length v8, v5

    if-lt v8, v12, :cond_6

    .line 1185
    aget v8, v5, v10

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1186
    aget v8, v5, v11

    sget v9, Lcom/syu/bt/App_Bt;->barHeight:I

    add-int/2addr v8, v9

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 1191
    :goto_2
    const-string v8, "btpop"

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, " mRunnable_PopBtNum itemFunc.getHeight() "

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, " ** layoutParams.y = "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    iget v10, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1192
    const/16 v8, 0x53

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 1196
    iget-object v8, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v11, v8, Lcom/syu/bt/App_Bt;->bPopBtShow_Num:Z

    .line 1197
    iget-object v8, p0, Lcom/syu/bt/App_Bt$2;->this$0:Lcom/syu/bt/App_Bt;

    iput-boolean v11, v8, Lcom/syu/bt/App_Bt;->bPopBtShowBak_Num:Z

    .line 1198
    sget-object v8, Lcom/lsec/core/frame/app/MyApplication;->mWindowManager:Landroid/view/WindowManager;

    invoke-interface {v8, v7, v2}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 1201
    .end local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v1    # "itemFunc":Lcom/lsec/core/frame/app/MyUiItem;
    .end local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "offsetX":I
    .end local v4    # "offsetY":I
    .end local v5    # "padding":[I
    .end local v6    # "pageFunc":Lcom/lsec/core/frame/ctrl/JPage;
    .end local v7    # "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_3
    return-void

    .line 1153
    .restart local v0    # "item":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v1    # "itemFunc":Lcom/lsec/core/frame/app/MyUiItem;
    .restart local v2    # "layoutParams":Landroid/view/WindowManager$LayoutParams;
    .restart local v6    # "pageFunc":Lcom/lsec/core/frame/ctrl/JPage;
    .restart local v7    # "pageNum":Lcom/lsec/core/frame/ctrl/JPage;
    :cond_4
    const/16 v8, 0x7e4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->type:I

    goto/16 :goto_0

    .line 1170
    .restart local v3    # "offsetX":I
    .restart local v4    # "offsetY":I
    :cond_5
    const/16 v4, 0xf

    goto :goto_1

    .line 1188
    .restart local v5    # "padding":[I
    :cond_6
    iput v3, v2, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 1189
    invoke-virtual {v1}, Lcom/lsec/core/frame/app/MyUiItem;->getHeight()I

    move-result v8

    sub-int/2addr v8, v4

    iput v8, v2, Landroid/view/WindowManager$LayoutParams;->y:I

    goto :goto_2
.end method
