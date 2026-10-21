.class enum Lcom/lsec/core/frame/ninepatch/BitmapType$4;
.super Lcom/lsec/core/frame/ninepatch/BitmapType;
.source "BitmapType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/lsec/core/frame/ninepatch/BitmapType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4000
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/lsec/core/frame/ninepatch/BitmapType;-><init>(Ljava/lang/String;ILcom/lsec/core/frame/ninepatch/BitmapType;)V

    .line 1
    return-void
.end method


# virtual methods
.method protected createNinePatchDrawable(Landroid/content/res/Resources;Landroid/graphics/Bitmap;Ljava/lang/String;)Landroid/graphics/drawable/NinePatchDrawable;
    .locals 1
    .param p1, "resources"    # Landroid/content/res/Resources;
    .param p2, "bitmap"    # Landroid/graphics/Bitmap;
    .param p3, "srcName"    # Ljava/lang/String;

    .prologue
    .line 64
    const/4 v0, 0x0

    return-object v0
.end method
