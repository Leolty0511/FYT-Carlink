.class public Lapp/App$i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lui/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lapp/App;->f()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Lapp/App;


# direct methods
.method public constructor <init>(Lapp/App;Ljava/lang/Runnable;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lapp/App$i;->b:Lapp/App;

    iput-object p2, p0, Lapp/App$i;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lu0/c;->a:Lo1/y;

    iget-object v0, p0, Lapp/App$i;->a:Ljava/lang/Runnable;

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 2
    sget-object p1, Ly0/g;->d:Lo1/y;

    iget-object v0, p0, Lapp/App$i;->a:Ljava/lang/Runnable;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    .line 3
    sget-object p1, Ly0/g;->e:Lo1/y;

    iget-object v0, p0, Lapp/App$i;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0, v1}, Lo1/y;->a(Ljava/lang/Runnable;I)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object p1, Lu0/c;->a:Lo1/y;

    iget-object v0, p0, Lapp/App$i;->a:Ljava/lang/Runnable;

    invoke-virtual {p1, v0}, Lo1/y;->d(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
