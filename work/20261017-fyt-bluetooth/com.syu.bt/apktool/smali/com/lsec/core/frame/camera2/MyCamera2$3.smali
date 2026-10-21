.class Lcom/lsec/core/frame/camera2/MyCamera2$3;
.super Ljava/lang/Object;
.source "MyCamera2.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/lsec/core/frame/camera2/MyCamera2;->getBestSupportedSize(Ljava/util/List;)Landroid/util/Size;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/util/Size;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/lsec/core/frame/camera2/MyCamera2;


# direct methods
.method constructor <init>(Lcom/lsec/core/frame/camera2/MyCamera2;)V
    .locals 0

    .prologue
    .line 1
    iput-object p1, p0, Lcom/lsec/core/frame/camera2/MyCamera2$3;->this$0:Lcom/lsec/core/frame/camera2/MyCamera2;

    .line 240
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Landroid/util/Size;Landroid/util/Size;)I
    .locals 4
    .param p1, "o1"    # Landroid/util/Size;
    .param p2, "o2"    # Landroid/util/Size;

    .prologue
    const/4 v1, 0x1

    const/4 v0, -0x1

    .line 243
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-le v2, v3, :cond_1

    .line 249
    :cond_0
    :goto_0
    return v0

    .line 246
    :cond_1
    invoke-virtual {p1}, Landroid/util/Size;->getWidth()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getWidth()I

    move-result v3

    if-ne v2, v3, :cond_2

    .line 247
    invoke-virtual {p1}, Landroid/util/Size;->getHeight()I

    move-result v2

    invoke-virtual {p2}, Landroid/util/Size;->getHeight()I

    move-result v3

    if-gt v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 249
    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 1
    check-cast p1, Landroid/util/Size;

    check-cast p2, Landroid/util/Size;

    invoke-virtual {p0, p1, p2}, Lcom/lsec/core/frame/camera2/MyCamera2$3;->compare(Landroid/util/Size;Landroid/util/Size;)I

    move-result v0

    return v0
.end method
