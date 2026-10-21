.class public Lmodule/sound/C32107$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lmodule/sound/C32107;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lmodule/sound/C32107;


# direct methods
.method public constructor <init>(Lmodule/sound/C32107;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lh0/c;->G:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-eqz v2, :cond_1

    .line 2
    iget-object v0, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    iget-boolean v3, v0, Lmodule/sound/C32107;->f1:Z

    if-eqz v3, :cond_1

    iget-object v4, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    if-nez v4, :cond_1

    .line 3
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    .line 4
    iget-object v0, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    invoke-virtual {v0, v1}, Lmodule/sound/C32107;->l1(Z)V

    goto :goto_1

    :cond_1
    if-nez v2, :cond_3

    .line 5
    iget-object v0, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    iget-object v0, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    iget-object v1, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Lmodule/sound/C32107;->l1(Z)V

    .line 8
    :cond_2
    iget-object v0, p0, Lmodule/sound/C32107$a;->a:Lmodule/sound/C32107;

    const/4 v1, 0x0

    iput-object v1, v0, Lmodule/sound/C32107;->s1:Ljava/lang/Boolean;

    :cond_3
    :goto_1
    return-void
.end method
