.class Landroid/graphics/drawable/DrawableContainer$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/graphics/drawable/DrawableContainer;->selectDrawable(I)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/graphics/drawable/DrawableContainer;


# direct methods
.method public constructor <init>(Landroid/graphics/drawable/DrawableContainer;)V
    .locals 0

    iput-object p1, p0, Landroid/graphics/drawable/DrawableContainer$1;->this$0:Landroid/graphics/drawable/DrawableContainer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$1;->this$0:Landroid/graphics/drawable/DrawableContainer;

    .line 2
    .line 3
    const/4 v1, 0x1

    .line 4
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/DrawableContainer;->animate(Z)V

    .line 5
    .line 6
    .line 7
    iget-object v0, p0, Landroid/graphics/drawable/DrawableContainer$1;->this$0:Landroid/graphics/drawable/DrawableContainer;

    .line 8
    .line 9
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 10
    .line 11
    .line 12
    return-void
.end method
