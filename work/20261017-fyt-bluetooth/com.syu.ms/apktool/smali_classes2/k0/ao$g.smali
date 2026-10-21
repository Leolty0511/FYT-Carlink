.class public Lk0/ao$g;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final synthetic a:Lk0/ao;


# direct methods
.method public constructor <init>(Lk0/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ao$g;->a:Lk0/ao;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lk0/ao;Lk0/ao$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lk0/ao$g;-><init>(Lk0/ao;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .line 1
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    const-string p2, "com.syu.canbus.fb.click"

    .line 2
    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    :try_start_0
    sget-object p1, Lk0/nt;->g:[I

    const/16 p2, 0x97

    aget p1, p1, p2

    const/4 p2, 0x4

    const/16 v0, 0x60

    const/4 v1, 0x3

    const/16 v2, 0x84

    const/16 v3, 0xe3

    const/4 v4, 0x5

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-ne p1, v7, :cond_0

    new-array p1, v4, [I

    aput v3, p1, v5

    aput v2, p1, v7

    aput v6, p1, v6

    aput v0, p1, v1

    aput v5, p1, p2

    .line 4
    invoke-static {p1}, Lz/k;->s([I)V

    goto :goto_0

    :cond_0
    new-array p1, v4, [I

    aput v3, p1, v5

    aput v2, p1, v7

    aput v6, p1, v6

    aput v0, p1, v1

    aput v7, p1, p2

    .line 5
    invoke-static {p1}, Lz/k;->s([I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
