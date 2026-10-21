.class public Ln0/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lo1/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/h2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/h2;


# direct methods
.method public constructor <init>(Ln0/h2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/h2$a;->a:Ln0/h2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    const/16 v0, 0x195

    if-eq p1, v0, :cond_1

    const/16 v0, 0x194

    if-eq p1, v0, :cond_1

    const/16 v0, 0x5b

    if-ne p1, v0, :cond_3

    .line 2
    :cond_1
    invoke-static {}, La/f;->u()Lui/b;

    move-result-object p1

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Lui/b;->b(I)V

    .line 3
    invoke-static {}, La/f;->u()Lui/b;

    move-result-object p1

    invoke-interface {p1}, Lui/b;->isShowing()Z

    move-result p1

    if-nez p1, :cond_2

    .line 4
    invoke-static {}, La/f;->u()Lui/b;

    move-result-object p1

    invoke-interface {p1}, Lui/b;->show()V

    .line 5
    :cond_2
    invoke-static {}, La/f;->u()Lui/b;

    move-result-object p1

    invoke-interface {p1}, Lui/b;->c()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_3
    return-void
.end method
