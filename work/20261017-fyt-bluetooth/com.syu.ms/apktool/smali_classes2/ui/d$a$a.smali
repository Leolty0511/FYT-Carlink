.class public Lui/d$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/d$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/d$a;


# direct methods
.method public constructor <init>(Lui/d$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/d$a$a;->a:Lui/d$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss()V
    .locals 2

    .line 1
    sget-object v0, Ln1/a;->a:Lo1/l0;

    invoke-virtual {v0}, Lo1/l0;->a()V

    .line 2
    iget-object v0, p0, Lui/d$a$a;->a:Lui/d$a;

    iget-object v0, v0, Lui/d$a;->a:Lui/d;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui/d;->i(Lui/d;I)I

    .line 3
    iget-object v0, p0, Lui/d$a$a;->a:Lui/d$a;

    iget-object v0, v0, Lui/d$a;->a:Lui/d;

    invoke-static {v0}, Lui/d;->g(Lui/d;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {v0}, La/e;->f(Ljava/lang/Object;)V

    .line 4
    invoke-static {v1}, Ly0/h;->R(I)V

    return-void
.end method
