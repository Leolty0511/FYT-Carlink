.class public Lv0/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lv0/d;->b(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    sget-object v0, Lv0/b;->c:Lv0/m;

    instance-of v1, v0, Lo1/q;

    if-eqz v1, :cond_0

    .line 2
    check-cast v0, Lo1/q;

    .line 3
    sget-object v1, Lz/a;->q:Lo1/f0;

    sget-object v2, Lz/a;->g:Lo1/e0;

    invoke-virtual {v1, v2, v0}, Lo1/f0;->d(Lo1/e0;Lo1/q;)V

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Lz/a;->q:Lo1/f0;

    invoke-virtual {v0}, Lo1/f0;->c()V

    const-string v1, "NOT IN USE, OBD SERIAL THREAD KEEP WAIT"

    .line 5
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    :goto_0
    return-void
.end method
