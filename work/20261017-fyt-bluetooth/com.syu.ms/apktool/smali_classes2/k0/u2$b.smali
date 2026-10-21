.class public Lk0/u2$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lk0/u2;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public a:Z

.field public final synthetic b:Lk0/u2;


# direct methods
.method public constructor <init>(Lk0/u2;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lk0/u2$b;->b:Lk0/u2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lk0/u2$b;->a:Z

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lk0/u2$b;->b:Lk0/u2;

    invoke-static {v0}, Lk0/u2;->b3(Lk0/u2;)I

    move-result v0

    if-eqz v0, :cond_2

    .line 2
    sget v0, Lu0/b;->o:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 3
    iput-boolean v1, p0, Lk0/u2$b;->a:Z

    .line 4
    iget-object v0, p0, Lk0/u2$b;->b:Lk0/u2;

    invoke-static {v0}, Lk0/u2;->c3(Lk0/u2;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-boolean v0, p0, Lk0/u2$b;->a:Z

    if-eqz v0, :cond_1

    .line 6
    invoke-static {}, Lk0/qt;->f()V

    :cond_1
    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lk0/u2$b;->a:Z

    :cond_2
    :goto_0
    return-void
.end method
