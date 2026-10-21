.class public Lh0/a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lh0/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lh0/a;


# direct methods
.method public constructor <init>(Lh0/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lh0/a$b;->b:Lh0/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->D:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 2
    sget-object v0, Lh0/c;->l:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->L0(Ljava/lang/String;)V

    .line 3
    sget-object v0, Lh0/c;->m:Ljava/lang/String;

    invoke-static {v0}, Lu0/d;->K0(Ljava/lang/String;)V

    .line 4
    sget-object v0, Lh0/c;->n:Ljava/lang/String;

    const-string v1, ""

    invoke-static {v0, v1}, Lu0/d;->J0(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-boolean v0, p0, Lh0/a$b;->a:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lh0/a$b;->a:Z

    .line 7
    iget-object v0, p0, Lh0/a$b;->b:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->w()V

    goto :goto_0

    .line 8
    :cond_0
    sget v0, Lu0/b;->C:I

    if-ne v0, v1, :cond_1

    .line 9
    sget v0, Lh0/c;->N:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 10
    iput-boolean v1, p0, Lh0/a$b;->a:Z

    .line 11
    iget-object v0, p0, Lh0/a$b;->b:Lh0/a;

    invoke-virtual {v0}, Lh0/a;->E()V

    :cond_1
    :goto_0
    return-void
.end method
