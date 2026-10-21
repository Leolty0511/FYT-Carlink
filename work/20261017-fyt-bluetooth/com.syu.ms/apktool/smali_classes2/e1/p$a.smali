.class public Le1/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/p;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/p;


# direct methods
.method public constructor <init>(Le1/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/p$a;->a:Le1/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    sget-boolean v0, Le1/a;->c:Z

    if-eqz v0, :cond_4

    .line 2
    iget-object v0, p0, Le1/p$a;->a:Le1/p;

    iget v1, v0, Le1/p;->h:I

    const/4 v2, 0x1

    add-int/2addr v1, v2

    iput v1, v0, Le1/p;->h:I

    const/4 v3, 0x5

    const/4 v4, 0x0

    if-lt v1, v3, :cond_0

    .line 3
    iput v4, v0, Le1/p;->h:I

    .line 4
    iget v1, v0, Le1/p;->i:I

    add-int/2addr v1, v2

    iput v1, v0, Le1/p;->i:I

    .line 5
    :cond_0
    iget v1, v0, Le1/p;->i:I

    const/4 v3, 0x2

    if-lt v1, v3, :cond_1

    .line 6
    iput v4, v0, Le1/p;->i:I

    .line 7
    iget v1, v0, Le1/p;->j:I

    add-int/2addr v1, v2

    iput v1, v0, Le1/p;->j:I

    .line 8
    :cond_1
    iget v1, v0, Le1/p;->j:I

    if-eqz v1, :cond_2

    .line 9
    invoke-static {v0}, Le1/p;->q(Le1/p;)I

    move-result v0

    invoke-static {v0}, Lu0/d;->o3(I)V

    .line 10
    iget-object v0, p0, Le1/p$a;->a:Le1/p;

    iget v0, v0, Le1/p;->g:I

    invoke-static {v0}, Lu0/d;->n3(I)V

    .line 11
    iget-object v0, p0, Le1/p$a;->a:Le1/p;

    invoke-static {v0}, Le1/p;->r(Le1/p;)V

    .line 12
    iget-object v0, p0, Le1/p$a;->a:Le1/p;

    iput v4, v0, Le1/p;->j:I

    :cond_2
    const-string v0, "sys.fyt.video.debug"

    .line 13
    invoke-static {v0, v4}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_3

    .line 14
    iget-object v0, p0, Le1/p$a;->a:Le1/p;

    invoke-static {v0}, Le1/p;->s(Le1/p;)V

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v3}, Lu0/d;->n3(I)V

    .line 16
    invoke-static {v2}, Lu0/d;->o3(I)V

    :cond_4
    :goto_0
    return-void
.end method
