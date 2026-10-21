.class public Lui/a$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lui/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/a;


# direct methods
.method public constructor <init>(Lui/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$c;->a:Lui/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lui/a$c;->a:Lui/a;

    invoke-static {v0}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    .line 2
    iget-object v0, p0, Lui/a$c;->a:Lui/a;

    invoke-static {v0}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lui/a$c;->a:Lui/a;

    invoke-static {v0}, Lui/a;->l(Lui/a;)Lui/a$f;

    move-result-object v0

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lui/a$f;->a(Z)V

    :cond_0
    return-void
.end method
