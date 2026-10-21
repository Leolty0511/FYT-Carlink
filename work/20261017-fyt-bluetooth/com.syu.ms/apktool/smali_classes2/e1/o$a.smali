.class public Le1/o$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le1/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le1/o;


# direct methods
.method public constructor <init>(Le1/o;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le1/o$a;->a:Le1/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    sget v0, Lu0/b;->n4:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 2
    sput-boolean v0, Le1/o;->x:Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {}, Lo1/l;->a()Lo1/l;

    move-result-object v0

    iget-object v1, p0, Le1/o$a;->a:Le1/o;

    invoke-static {v1}, Le1/o;->k(Le1/o;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_0
    return-void
.end method
