.class public Lk0/j9$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/j9;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/j9;


# direct methods
.method public constructor <init>(Lk0/j9;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/j9$d;->a:Lk0/j9;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 11

    .line 1
    iget-object v0, p0, Lk0/j9$d;->a:Lk0/j9;

    iget v1, v0, Lk0/j9;->h:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/j9;->h:I

    .line 3
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Enter ECO Mode in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lk0/j9$d;->a:Lk0/j9;

    iget v1, v1, Lk0/j9;->h:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    sget-object v6, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    const/16 v7, 0x1c

    const/4 v8, -0x1

    const/16 v9, 0x3c

    const v10, -0x6fff0100    # -2.5439994E-29f

    const-string v4, "ECO_MODE"

    invoke-virtual/range {v2 .. v10}, Ln1/c;->l(ILjava/lang/String;Ljava/lang/String;Landroid/graphics/Paint$Align;IIII)V

    .line 4
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    iget-object v1, p0, Lk0/j9$d;->a:Lk0/j9;

    iget-object v1, v1, Lk0/j9;->i:Ljava/lang/Runnable;

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    const-string v3, "ECO_MODE"

    if-ne v1, v0, :cond_1

    .line 5
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln1/c;->m(Ljava/lang/String;)V

    goto :goto_0

    .line 6
    :cond_1
    invoke-static {}, La/f;->k()Ln1/c;

    move-result-object v0

    invoke-virtual {v0, v3}, Ln1/c;->m(Ljava/lang/String;)V

    .line 7
    invoke-static {v2}, Lu0/d;->u3(I)V

    :goto_0
    return-void
.end method
