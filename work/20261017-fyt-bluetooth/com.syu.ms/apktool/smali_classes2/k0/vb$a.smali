.class public Lk0/vb$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/vb;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/vb;


# direct methods
.method public constructor <init>(Lk0/vb;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/vb$a;->a:Lk0/vb;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/vb$a;->a:Lk0/vb;

    iget v1, v0, Lk0/vb;->n:I

    const/4 v2, 0x1

    if-lez v1, :cond_0

    sub-int/2addr v1, v2

    .line 2
    iput v1, v0, Lk0/vb;->n:I

    .line 3
    :cond_0
    iget v0, v0, Lk0/vb;->n:I

    if-gtz v0, :cond_1

    sget v0, Lk0/vb;->D:I

    if-ne v0, v2, :cond_1

    .line 4
    invoke-static {}, Lo1/u;->a0()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lk0/vb$a;->a:Lk0/vb;

    invoke-static {v0, v2}, Lk0/vb;->e3(Lk0/vb;Z)Z

    .line 6
    invoke-static {}, Lo1/u;->z()I

    :cond_1
    return-void
.end method
