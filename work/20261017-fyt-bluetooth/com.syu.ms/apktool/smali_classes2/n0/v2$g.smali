.class public Ln0/v2$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/v2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Ln0/v2;


# direct methods
.method public constructor <init>(Ln0/v2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/v2$g;->a:Ln0/v2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/v2;Ln0/v2$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln0/v2$g;-><init>(Ln0/v2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.Turkey_Va"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_7

    const-string p1, "ints"

    .line 3
    invoke-virtual {p2, p1}, Landroid/content/Intent;->getIntArrayExtra(Ljava/lang/String;)[I

    move-result-object p1

    const-string v0, "flts"

    .line 4
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getFloatArrayExtra(Ljava/lang/String;)[F

    move-result-object v0

    const-string v1, "strs"

    .line 5
    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    const-string v2, "data1"

    const/4 v3, 0x0

    .line 6
    invoke-virtual {p2, v2, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const-string v4, "str0"

    .line 7
    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    .line 8
    aget p2, p1, v3

    const/16 v3, 0x78

    if-ne p2, v3, :cond_6

    if-eqz v2, :cond_5

    const/4 p1, 0x1

    if-eq v2, p1, :cond_4

    const/4 p1, 0x2

    if-eq v2, p1, :cond_3

    const/4 p1, 0x3

    if-eq v2, p1, :cond_2

    const/4 p1, 0x4

    if-eq v2, p1, :cond_1

    const/4 p1, 0x5

    if-eq v2, p1, :cond_0

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {}, Lo1/u;->c1()I

    goto :goto_0

    .line 10
    :cond_1
    invoke-static {}, Lo1/u;->i()I

    goto :goto_0

    .line 11
    :cond_2
    invoke-static {}, Lo1/u;->p()V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {}, Lo1/u;->s()V

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {}, Lo1/u;->x0()V

    goto :goto_0

    .line 14
    :cond_5
    invoke-static {}, Lo1/u;->t0()V

    goto :goto_0

    .line 15
    :cond_6
    invoke-static {p1, v0, v1}, Lu0/g;->b([I[F[Ljava/lang/String;)V

    :cond_7
    :goto_0
    return-void
.end method
