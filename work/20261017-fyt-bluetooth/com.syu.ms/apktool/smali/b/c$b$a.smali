.class public Lb/c$b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lb/c$b;


# direct methods
.method public constructor <init>(Lb/c$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/c$b$a;->b:Lb/c$b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lb/c$b$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget v0, Lu0/b;->f:I

    iget v1, p0, Lb/c$b$a;->a:I

    if-eq v0, v1, :cond_3

    .line 2
    iput v0, p0, Lb/c$b$a;->a:I

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lb/c$b$a;->b:Lb/c$b;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lb/c$b;->d(Z)V

    goto :goto_0

    :cond_0
    if-lez v0, :cond_3

    .line 4
    invoke-static {}, Lg/e;->e()I

    move-result v0

    const/16 v1, 0xfa0

    .line 5
    invoke-static {}, Lg/e;->p()I

    move-result v2

    const/16 v3, 0x30

    if-eq v2, v3, :cond_1

    const/16 v2, 0x2c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x3c

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2e

    if-eq v0, v2, :cond_1

    const/16 v2, 0x2f

    if-ne v0, v2, :cond_2

    :cond_1
    const/16 v1, 0x1b58

    .line 6
    :cond_2
    invoke-static {}, Lo1/m;->a()Lo1/m;

    move-result-object v0

    new-instance v2, Lb/c$b$a$a;

    invoke-direct {v2, p0}, Lb/c$b$a$a;-><init>(Lb/c$b$a;)V

    int-to-long v3, v1

    invoke-virtual {v0, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_3
    :goto_0
    return-void
.end method
