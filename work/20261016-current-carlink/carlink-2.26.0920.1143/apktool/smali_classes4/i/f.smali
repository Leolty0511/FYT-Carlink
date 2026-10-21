.class public final synthetic Li/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public synthetic constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 6

    .line 1
    sget p1, Lcom/syu/carlink/fragment/LogoFragment;->g:I

    .line 2
    .line 3
    sget-object p1, Lcom/syu/carlink/CarLink;->i:Lcom/syu/carlink/CarLink;

    .line 4
    .line 5
    if-eqz p1, :cond_1

    .line 6
    .line 7
    invoke-virtual {p1}, Lcom/syu/carlink/CarLink;->f()Lcom/syu/carlink/CarLinkService;

    .line 8
    .line 9
    .line 10
    move-result-object p1

    .line 11
    if-eqz p1, :cond_0

    .line 12
    .line 13
    invoke-virtual {p1}, Lcom/syu/carlink/CarLinkService;->l()Lo/e;

    .line 14
    .line 15
    .line 16
    move-result-object v0

    .line 17
    const/4 v1, 0x0

    .line 18
    const/16 v2, 0x85

    .line 19
    .line 20
    const/4 p1, 0x1

    .line 21
    new-array v3, p1, [I

    .line 22
    .line 23
    const/4 p1, 0x0

    .line 24
    const/4 v4, 0x3

    .line 25
    aput v4, v3, p1

    .line 26
    .line 27
    const/4 v4, 0x0

    .line 28
    const/16 v5, 0x18

    .line 29
    .line 30
    invoke-static/range {v0 .. v5}, Lo/e;->b(Lo/e;II[I[Ljava/lang/String;I)V

    .line 31
    .line 32
    .line 33
    :cond_0
    return-void

    .line 34
    :cond_1
    const-string p1, "me"

    .line 35
    .line 36
    invoke-static {p1}, Lt/b;->B(Ljava/lang/String;)V

    .line 37
    .line 38
    .line 39
    const/4 p1, 0x0

    .line 40
    throw p1
.end method
