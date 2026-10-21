.class public Lk0/a8$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/a8;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lk0/a8;


# direct methods
.method public constructor <init>(Lk0/a8;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/a8$b;->a:Lk0/a8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lk0/a8$b;->a:Lk0/a8;

    iget v1, v0, Lk0/a8;->j:I

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    iput v1, v0, Lk0/a8;->j:I

    if-lez v1, :cond_0

    .line 2
    sget v1, Lu0/b;->a0:I

    if-ne v1, v2, :cond_1

    .line 3
    invoke-static {v0}, Lk0/a8;->c3(Lk0/a8;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, v0, Lk0/a8;->l:Ljava/lang/Runnable;

    invoke-static {v0}, Ll0/b0;->p0(Ljava/lang/Runnable;)V

    .line 5
    iget-object v0, p0, Lk0/a8$b;->a:Lk0/a8;

    const/4 v1, 0x5

    iput v1, v0, Lk0/a8;->j:I

    :cond_1
    :goto_0
    return-void
.end method
