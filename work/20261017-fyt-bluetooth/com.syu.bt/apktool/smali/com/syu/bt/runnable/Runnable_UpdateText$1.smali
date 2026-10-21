.class Lcom/syu/bt/runnable/Runnable_UpdateText$1;
.super Ljava/lang/Object;
.source "Runnable_UpdateText.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/syu/bt/runnable/Runnable_UpdateText;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/syu/bt/runnable/Runnable_UpdateText;


# direct methods
.method constructor <init>(Lcom/syu/bt/runnable/Runnable_UpdateText;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText$1;->this$0:Lcom/syu/bt/runnable/Runnable_UpdateText;

    .line 186
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 189
    invoke-static {}, Lcom/syu/bt/util/BTUtil;->getInstance()Lcom/syu/bt/util/BTUtil;

    move-result-object v1

    sget-object v2, Lcom/lsec/core/ipc/module/main/Bt;->sPhoneNumber:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/syu/bt/util/BTUtil;->getHeadIco(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 190
    .local v0, "bmp":Landroid/graphics/Bitmap;
    iget-object v1, p0, Lcom/syu/bt/runnable/Runnable_UpdateText$1;->this$0:Lcom/syu/bt/runnable/Runnable_UpdateText;

    iget-object v1, v1, Lcom/syu/bt/runnable/Runnable_UpdateText;->mView:Lcom/lsec/core/frame/ctrl/JView;

    new-instance v2, Landroid/graphics/drawable/BitmapDrawable;

    sget-object v3, Lcom/lsec/core/frame/app/MyUi;->mResources:Landroid/content/res/Resources;

    invoke-static {v0}, Lcom/syu/bt/util/BTUtil;->getCircleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {v1, v2}, Lcom/lsec/core/frame/ctrl/JView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 191
    return-void
.end method
