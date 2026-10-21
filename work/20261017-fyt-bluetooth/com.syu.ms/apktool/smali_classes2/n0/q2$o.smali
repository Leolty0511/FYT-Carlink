.class public Ln0/q2$o;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/q2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "o"
.end annotation


# instance fields
.field public final synthetic a:Ln0/q2;


# direct methods
.method public constructor <init>(Ln0/q2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/q2$o;->a:Ln0/q2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Ln0/q2;Ln0/q2$f;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Ln0/q2$o;-><init>(Ln0/q2;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string v0, "com.syu.Turkey_Va"

    .line 2
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

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

    move-result-object p2

    .line 6
    invoke-static {p1, v0, p2}, Lu0/g;->b([I[F[Ljava/lang/String;)V

    :cond_0
    return-void
.end method
