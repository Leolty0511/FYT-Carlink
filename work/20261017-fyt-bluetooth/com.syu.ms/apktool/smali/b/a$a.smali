.class public Lb/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:I

.field public final synthetic b:Lb/a;


# direct methods
.method public constructor <init>(Lb/a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lb/a$a;->b:Lb/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lb/a$a;->a:I

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    iget v0, p0, Lb/a$a;->a:I

    sget v1, Lu0/b;->a0:I

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lb/a$a;->b:Lb/a;

    iget-boolean v4, v0, Lb/a;->b:Z

    iput-boolean v4, v0, Lb/a;->a:Z

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-nez v1, :cond_2

    .line 3
    iget-object v4, p0, Lb/a$a;->b:Lb/a;

    iget-wide v5, v4, Lb/a;->f:J

    const-wide/32 v7, -0x80000000

    cmp-long v5, v5, v7

    if-eqz v5, :cond_1

    const-wide/16 v5, 0x0

    .line 4
    iput-wide v5, v4, Lb/a;->f:J

    :cond_1
    const/4 v5, 0x0

    .line 5
    iput-object v5, v4, Lb/a;->e:Ljava/lang/String;

    .line 6
    :cond_2
    iput v1, p0, Lb/a$a;->a:I

    .line 7
    iget-object v1, p0, Lb/a$a;->b:Lb/a;

    iget-boolean v4, v1, Lb/a;->a:Z

    if-eqz v4, :cond_3

    const/16 v5, 0x81

    new-array v6, v3, [I

    .line 8
    invoke-virtual {v1, v4}, Lb/a;->c(Z)I

    move-result v1

    aput v1, v6, v2

    invoke-static {v5, v6}, Lu0/d;->I3(I[I)V

    :cond_3
    if-eqz v0, :cond_5

    .line 9
    iget v0, p0, Lb/a$a;->a:I

    if-ne v0, v3, :cond_4

    .line 10
    sget-object v0, Lh0/d;->i:Lo1/y;

    iget-object v1, p0, Lb/a$a;->b:Lb/a;

    invoke-virtual {v0, v1, v3}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_1

    .line 11
    :cond_4
    sget-object v0, Lh0/d;->i:Lo1/y;

    iget-object v1, p0, Lb/a$a;->b:Lb/a;

    invoke-virtual {v0, v1}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :cond_5
    :goto_1
    return-void
.end method
