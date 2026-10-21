.class public Lk0/ao$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/ao;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/ao;


# direct methods
.method public constructor <init>(Lk0/ao;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget v0, Lu0/b;->f2:I

    const/4 v1, 0x4

    const/4 v2, 0x2

    const/4 v3, 0x0

    const-string v4, "persist.fyt.reversetemp"

    if-eq v0, v2, :cond_6

    const/4 v5, 0x5

    const/4 v6, 0x3

    if-eq v0, v6, :cond_4

    const/16 v7, 0xa

    if-eq v0, v7, :cond_2

    const/16 v1, 0xb

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v6}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 4
    :cond_1
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v5}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 5
    :cond_2
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v2}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 7
    :cond_3
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v1}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 8
    :cond_4
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 9
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v5}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 10
    :cond_5
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v6}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 11
    :cond_6
    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 12
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v1}, Lk0/ao;->c3(Lk0/ao;I)V

    goto :goto_0

    .line 13
    :cond_7
    iget-object v0, p0, Lk0/ao$a;->a:Lk0/ao;

    invoke-static {v0, v2}, Lk0/ao;->c3(Lk0/ao;I)V

    :goto_0
    return-void
.end method
