.class public Lui/c$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/c;


# direct methods
.method public constructor <init>(Lui/c;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/c$c;->a:Lui/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui/c;->n(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->p(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->r(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->t(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->v(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->x(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0, v1}, Lui/c;->n(Lui/c;Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    .line 3
    iget-object v0, p0, Lui/c$c;->a:Lui/c;

    invoke-static {v0}, Lui/c;->g(Lui/c;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method
