.class public Lg/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lg/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lg/o;


# direct methods
.method public constructor <init>(Lg/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lg/o$a;->b:Lg/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lg/o$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->f:I

    if-eqz v0, :cond_1

    .line 2
    sget-object v0, Lo0/e;->b:Lo0/h;

    instance-of v1, v0, Lo0/h;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Lo0/h;->m()V

    .line 4
    :cond_0
    iget-object v0, p0, Lg/o$a;->b:Lg/o;

    invoke-virtual {v0}, Lg/o;->W()V

    :cond_1
    const/16 v0, 0x44

    .line 5
    invoke-static {v0}, Lg/e;->j(I)Z

    move-result v0

    if-eqz v0, :cond_3

    iget v0, p0, Lg/o$a;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    sget v0, Lu0/b;->f:I

    if-nez v0, :cond_3

    sget v0, Lu0/b;->D:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_3

    .line 6
    :cond_2
    invoke-static {}, Lc/e;->d()Lc/e;

    move-result-object v0

    const/16 v1, 0x7f

    invoke-virtual {v0, v1}, Lc/e;->c(I)Z

    .line 7
    :cond_3
    sget v0, Lu0/b;->f:I

    iput v0, p0, Lg/o$a;->a:I

    return-void
.end method
