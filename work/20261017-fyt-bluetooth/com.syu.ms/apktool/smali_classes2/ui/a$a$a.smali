.class public Lui/a$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lui/a$a;->run()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lui/a$a;


# direct methods
.method public constructor <init>(Lui/a$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lui/a$a$a;->a:Lui/a$a;

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
    iget-object v0, p0, Lui/a$a$a;->a:Lui/a$a;

    iget-object v0, v0, Lui/a$a;->a:Lui/a;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lui/a;->i(Lui/a;I)I

    .line 3
    iget-object v0, p0, Lui/a$a$a;->a:Lui/a$a;

    iget-object v0, v0, Lui/a$a;->a:Lui/a;

    invoke-static {v0}, Lui/a;->g(Lui/a;)Landroid/widget/PopupWindow;

    move-result-object v0

    invoke-static {v0}, La/e;->f(Ljava/lang/Object;)V

    .line 4
    invoke-static {v1}, Ly0/h;->R(I)V

    const-string v0, "VOL"

    const-string v1, "====================>>> hidded vol window"

    .line 5
    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
