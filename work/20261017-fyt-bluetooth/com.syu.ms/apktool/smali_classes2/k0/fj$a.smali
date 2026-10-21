.class public Lk0/fj$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/fj;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/fj;


# direct methods
.method public constructor <init>(Lk0/fj;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/fj$a;->a:Lk0/fj;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/fj$a;->a:Lk0/fj;

    iget-object v0, v0, Lk0/fj;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->b(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lk0/fj$a;->a:Lk0/fj;

    const/4 v1, 0x5

    iput v1, v0, Lk0/fj;->j:I

    const/4 v1, 0x0

    .line 3
    iput v1, v0, Lk0/fj;->b:I

    .line 4
    iput v1, v0, Lk0/fj;->c:I

    return-void
.end method
