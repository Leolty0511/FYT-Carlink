.class public Ln0/c4$w;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln0/c4;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln0/c4;


# direct methods
.method public constructor <init>(Ln0/c4;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln0/c4$w;->a:Ln0/c4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    sget v0, Lu0/b;->w:I

    .line 2
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v1

    invoke-virtual {v1}, Lu0/i;->m3()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x2

    if-ne v1, v4, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    if-ne v1, v3, :cond_1

    move v0, v2

    .line 3
    :cond_1
    :goto_0
    invoke-static {}, Lg/e;->m()Z

    move-result v4

    if-nez v4, :cond_2

    .line 4
    new-instance v4, Ln0/c4$w$a;

    invoke-direct {v4, p0, v0}, Ln0/c4$w$a;-><init>(Ln0/c4$w;I)V

    const-wide/16 v5, 0x258

    invoke-static {v4, v5, v6}, Lo1/j;->c(Ljava/lang/Runnable;J)V

    .line 5
    :cond_2
    invoke-static {}, Lapp/App;->c()Lapp/App;

    move-result-object v0

    invoke-virtual {v0}, Lapp/App;->g()Z

    move-result v0

    if-eqz v0, :cond_4

    if-nez v1, :cond_4

    .line 6
    invoke-static {}, Lu0/i;->l3()Lu0/i;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 7
    sget v1, Lu0/b;->w:I

    if-ne v1, v3, :cond_3

    move v2, v3

    :cond_3
    invoke-virtual {v0, v2}, Lu0/i;->T3(Z)V

    :cond_4
    return-void
.end method
