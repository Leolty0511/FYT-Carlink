.class public Lk0/nj$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/nj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/nj;


# direct methods
.method public constructor <init>(Lk0/nj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/nj$f;->a:Lk0/nj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/nj$f;->a:Lk0/nj;

    const/4 v1, 0x0

    iput v1, v0, Lk0/nj;->r:I

    .line 2
    iput v1, v0, Lk0/nj;->s:I

    .line 3
    iput v1, v0, Lk0/nj;->n:I

    .line 4
    iput v1, v0, Lk0/nj;->o:I

    .line 5
    iget-object v0, v0, Lk0/nj;->y:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 6
    iget-object v0, p0, Lk0/nj$f;->a:Lk0/nj;

    const/4 v1, 0x5

    iput v1, v0, Lk0/nj;->w:I

    return-void
.end method
